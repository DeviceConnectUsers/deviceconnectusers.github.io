# ファイルの変更通知

## ファイル監視

ファイルを監視して、更新があると通知イベントを受け取れるようになります。事前に[ファイル参照 API](/webapi/fileDescriptor)の**ファイルの変更を監視する**を実行しておきます。

### 通知される内容

実際に通知される内容の例です。

```
{
    "attribute": "onwatchfile", 
    "file": {
        "curr": "2016-07-27T06:50:24+0900", 
        "path": "test"
    }, 
    "profile": "fileDescriptor", 
    "serviceId": "Hos...org", 
    "sessionKey": "vwt81tt9"
}
```

|キー|&nbsp;|型|説明|
|---|------|---|---|
|attribute|&nbsp;|文字列|イベント名。常にonwatchfile|
|profile|&nbsp;|文字列|サービス名。常にfileDescriptor|
|serviceId|&nbsp;|文字列|サービスIDを指定します|
|sessionKey|&nbsp;|文字列|WebSocket側と共通の通知を受け取るためのセッションキー|
|file|&nbsp;|ハッシュ|&nbsp;|
|&nbsp;|curr|日付|更新があった日時|
|&nbsp;|path|文字列|ファイルのパス|

