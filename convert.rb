require 'json'
require 'gettext'
require 'poparser'
require 'fileutils'
require 'redcarpet'

unless ARGV[0]
  puts "You have to set a json file"
  exit
end
unless ARGV[1]
  puts "You have to set a directory name"
  exit
end
json = JSON.parse(open(ARGV[0]).read, symbolize_names: true)

$pos = {}

class Doc
  def initialize(filename, dir)
    @locale = [:ja]
    @docs = {}
    @dir = dir
    @filename = filename
    @markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML, autolink: true, tables: true)
    @locale.each do |locale|
      filename = "#{locale}.po"
      unless File.exist? filename
        f = File.open(filename, "w")
        f.write("")
        f.close
      else
        lines = open(filename, "r").read.split("\n")
        next unless lines[0] == ""
        next if lines.size == 0
        f = File.open("#{locale}.po", "w")
        f.write(lines[1..-1].join("\n"))
      end
    end
    @locale.each do |locale|
      if $pos[locale].nil?
        $pos[locale] = PoParser.parse("#{locale}.po")
      end
      @docs[locale] = []
    end
  end
  
  def << (format)
    if format.class == Array
      msg = format[1]
      format = format[0]
    else
      msg = format
    end
    if format.split("|").size > 2
      # table
      row = {}
      @locale.each do |locale|
        row[locale] = []
        format.split("|").each do |param|
          if param.match(/^\-+$/)
            row[locale] << param
            next
          end
          matched = false
          $pos[locale].entries.each_with_index do |entry, i|
            if entry.msgid.str == param
              matched = true
              row[locale] << entry.msgstr
              break
            end
          end
          unless matched
            unless param == ""
              $pos[locale].add(msgid: param, msgstr: param, translator_comment: "#{@filename}.md row")
            else
              row[locale] << param
            end
          end
        end
        @docs[locale] << row[locale].join("|") + "|"
      end
      return
    end
    
    @locale.each do |locale|
      matched = false
      $pos[locale].entries.each_with_index do |entry, i|
        if entry.msgid.str == msg
          matched = true
          @docs[locale] << @markdown.render(format.gsub(msg, entry.msgstr))
          break
        end
      end
      unless matched
        unless msg == ""
          $pos[locale].add(msgid: msg, msgstr: msg, translator_comment: "#{@filename}.md")
        end
        @docs[locale] << @markdown.render(format)
      end
    end
  end
  
  def size
    @docs[:en].size
  end
  
  def save
    @locale.each do |locale|
      dirname = @dir.gsub(":locale", locale.to_s)
      FileUtils.mkdir_p(dirname)
      filename = "#{dirname}/#{@filename}.md"
      f = File.open(filename, "w")
      f.write(@docs[locale].join("\n"))
      f.close
    end
    save_po
  end
  
  def save_po
    $pos.each do |locale, po|
      $pos[locale].save_file
    end
  end
end

files = {}
t = {}
json[:paths].each do |url, path|
  urls = url.to_s.split("/")
  filename = urls[1..2].join.gsub(urls[1], "").to_sym
  if urls.size == 2
    filename = urls[1]
  end
  unless files[filename]
    docs = Doc.new(filename, ARGV[1])
    files[filename] = nil
    docs << ["# #{filename.capitalize} API", "#{filename.capitalize} API"]
    docs << ""
  else
    docs = files[filename]
  end
  [:get, :post, :put, :delete].each do |method|
    next unless path[method]
    obj = path[method]
    docs << ["## #{obj[:summary]}", obj[:summary]]
    docs << ""
    docs << obj[:description]
    docs << ""
    docs << "### Basic specifications"
    docs << ""
    docs << "API Path"
    docs << ": #{url}"
    docs << ""
    docs << "Method"
    docs << ": #{method.capitalize}"
    docs << ""
    docs << "### Request"
    docs << ""
    docs << "#### Header"
    docs << ""
    docs << "|Header type|Content|"
    docs << "|----------------|----------------|"
    docs << "|Content-Type|application/json|"
    docs << ""
    
    if obj[:parameters]
      docs << "#### Parameters"
      docs << ""
      docs << "|Key|Required|Type|Place|Description|"
      docs << "|-----|-----|-----|-----|-----|"
      obj[:parameters].each do |params|
        if params[:$ref]
          params = json[:parameters][params[:$ref].split("/")[2].to_sym]
        end
        docs << "|#{params[:name]}|#{params[:required] == true ? '✓' : ''}|#{params[:type].to_s.capitalize}|#{params[:in]}|#{params[:description]}|"
      end
      docs << ""
    end
    docs << "### Response"
    docs << ""
    docs << "#### HTTP responses"
    docs << ""
    docs << "|HTTP response status|Content|"
    docs << "|-----|-----|"
    obj[:responses].each do |status, response|
      docs << "|#{status}|#{response[:description]}|"
    end
    docs << ""
    docs << "Please check [Error codes](./error.md) for details."
    docs << ""
    success = obj[:responses]["200".to_sym] || obj[:responses]["201".to_sym]
    isArray = false
    if success
      if success[:schema][:$ref]
        schema = success[:schema][:$ref].split("/")[2]
        response = json[:definitions][schema.to_sym]
      else
        response = success[:schema]
      end
      case response[:type]
      when 'object'
        response_rows = []
        response[:properties].each do |name, hash|
          if hash[:type] == 'array'
            isArray = true
            response_rows << [name, hash[:type].to_s.capitalize]
            if hash[:items][:$ref]
              sub_response = json[:definitions][hash[:items][:$ref].split("/")[2].to_sym]
            else
              sub_response = hash[:items]
            end
            case sub_response[:type]
            when 'object'
              sub_response[:properties].each do |sub_name, sub_hash|
                response_rows << ["", sub_name, sub_hash[:type].to_s.capitalize]
              end
            end
          else
            response_rows << [name, hash[:type].to_s.capitalize]
          end
        end
        docs << ""
      else
        puts response
      end
      docs << "#### Response fields"
      docs << ""
      if isArray
        docs << "|Key||Type|"
        docs << "|-----|-----|-----|"
        response_rows.each do |row|
          if row.size == 2
            docs << "|" + [row[0], "", row[1]].join("|") + "|"
          else
            docs << "|" + [row[0], row[1], row[2]].join("|") + "|"
          end
        end
      else
        docs << "|Key|Type|"
        docs << "|-----|-----|"
        response_rows.each do |row|
          docs << "|" + [row[0], row[1]].join("|") + "|"
        end
      end
      docs << ""
    else
      docs << "Return an empty JSON."
      docs << ""
    end
  end
  files[filename] = docs
end

files.each do |filename, doc|
  doc.save
end
