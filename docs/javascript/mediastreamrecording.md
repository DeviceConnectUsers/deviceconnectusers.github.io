デバイス情報を取得するところまでは[DeviceConnectアプリケーションの作り方](/javascript/basic/)を参照してください。 `app.services` にデバイス情報が入っていることとします。

## 写真を撮る

THETAなどで写真を撮る場合、MediaStreamRecording APIを使います。

まず最初に /mediaStreamRecording/onphoto を実行して、写真撮影の処理を行います。APIは次のようになります。

```
PUT /mediaStreamRecording/onphoto
```

実行時のJavaScriptは次のようになります。 dConnect.URIBuilder() を使って URL をビルドするのが良いでしょう。

```
var service = app.services.filter(function(s) {return s.name.indexOf("THETA") > -1})[0];
// URLを作成します
var builder = new dConnect.URIBuilder();
builder.setProfile("mediaStreamRecording");
builder.setAttribute('onphoto');
builder.setServiceId(service.id);
builder.setAccessToken(app.accessToken);
var uri = builder.build();
var uri = builder.build();

// PUTメソッドを実行します
dConnect.put(uri, null, null, function(json) {
  alert("写真撮影開始しました");
},
function(errorCode, errorMessage) {
  // 実行時エラー
  console.error(errorMessage)
});
```

### 写真のURLを取得する

次に撮影された写真のURLを取得します。これは /mediaStreamRecording/takephoto を使います。APIは次のようになります。

```
POST /mediaStreamRecording/takephoto
```

実行時のJavaScriptは次のようになります。 dConnect.URIBuilder() を使って URL をビルドするのが良いでしょう。

```
var service = app.services.filter(function(s) {return s.name.indexOf("THETA") > 0})[0];

var builder = new dConnect.URIBuilder();
builder.setProfile("mediaStreamRecording");
builder.setAttribute('takephoto');
builder.setServiceId(service.id);
builder.addParameter(dConnect.constants.media_stream_recording.PARAM_TARGET, 0);
builder.setAccessToken(app.accessToken);
var uri = builder.build();

// POSTメソッドを実行します
dConnect.post(uri, null, null, function(json) {
  $("#photo").attr("crossorigin", "anonymous");
  $("#photo").attr("src", json.uri);
},
function(errorCode, errorMessage) {
  // 実行時エラー
  console.error(errorMessage)
});
```

この2つの処理によって、撮影した後の画像のURLを取得するまでの流れができあがります。

----

実際の処理、コードについては [メディアストリーム録画APIのデモ](/javascript/examples/mediastreamrecording/takephoto/) を参照してください。
