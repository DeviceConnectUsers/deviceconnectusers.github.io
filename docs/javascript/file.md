デバイス情報を取得するところまでは[DeviceConnectアプリケーションの作り方](/javascript/basic/)を参照してください。 `app.services` にデバイス情報が入っていることとします。

## ファイルAPIを使ってファイル一覧を取得する

[ファイルAPI](/webapi/file/) によれば、Web APIは次のようになります。

```
GET /gotapi/file/list
```

そしてJavaScriptで書くと次のようになります。以下のコードはファイル一覧を取得して、selectタグに適用するコードです。なお、サービス対象はTHETAとしています。

```
var getFiles = function() {
  var service = app.services.filter(function(s) {return s.name.indexOf("THETA") > -1})[0];
  var builder = new dConnect.URIBuilder();
  builder.setProfile("file");
  builder.setAttribute('list');
  builder.setServiceId(service.id);
  builder.setAccessToken(app.accessToken);
  var uri = builder.build();
  dConnect.get(uri, null, function(json) {
    var $select = $("#files");
    json.files.forEach(function(v, i) {
      $select.append($("<option>"+v.path+"</option>"));
    })
  },
  function(errorCode, errorMessage) {
    // 許可が得られなかった場合
    console.error(errorMessage)
  });
};
```

## ファイルを取得する

APIは次のようになります。

```
GET /gotapi/file/receive
```

このリクエストの結果を取得して、imgタグに適用するデモコードは次のようになります。今回はTHETAのファイルを対象にしています。

```
var getPhoto = function(value) {
  var service = app.services.filter(function(s) {return s.name.indexOf("THETA") > -1})[0];
  var builder = new dConnect.URIBuilder();
  builder.setProfile("file");
  builder.setAttribute('receive');
  builder.setServiceId(service.id);
  builder.setAccessToken(app.accessToken);
  builder.addParameter(dConnect.constants.file.PARAM_PATH, value);
  var uri = builder.build();
  dConnect.get(uri, null, function(json) {
    $("#photo").attr("src", json.uri);
  },
  function(errorCode, errorMessage) {
    // 許可が得られなかった場合
    console.error(errorMessage)
  });
}
```

### 注意点

ファイルを取得してそれをimgタグに適用する場合、crossorigin要素を使わないと表示に失敗します。

```
<img id="photo" width="500" crossorigin="anonymous" />
```

----

デモのコードを[こちらにアップロード](/javascript/examples/file/)してあります。動作確認時に使ってみてください。
