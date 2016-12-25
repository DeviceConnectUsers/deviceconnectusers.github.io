デバイス情報を取得するところまでは[DeviceConnectアプリケーションの作り方](/javascript/basic/)を参照してください。 `app.services` にデバイス情報が入っていることとします。

## バイブレーションAPIについて

[バイブレーションAPI](/webapi/vibration/) によれば、Web APIは次のようになります。

```
PUT  /gotapi/vibration/vibrate
```

パラメータは pattern が指定できます。この文字列に 1000 であったり、 1000,2000 といった形でバイブレーションを実行するパターンを指定します。数字は ms 単位です。

実行時のJavaScriptは次のようになります。 dConnect.URIBuilder() を使って URL をビルドするのが良いでしょう。

```
// バイブレーションを実行したいデバイスを検索しています
var service = app.services.filter(function(s) {return s.config == "HostConfig"})[0];

// URLを作成します
var builder = new dConnect.URIBuilder();
builder.setProfile("vibration");
builder.setAttribute('vibrate');
builder.setServiceId(service.id);
builder.setAccessToken(app.accessToken);
builder.addParameter(dConnect.constants.vibration.PARAM_PATTERN, "1000,2000");
var uri = builder.build();

// PUTメソッドを実行します
dConnect.put(uri, null, null, function(json) {
  alert("処理成功しました");
},
function(errorCode, errorMessage) {
  // 実行時エラー
  console.error(errorMessage)
});
```

----

実際の処理、コードについては [バイブレーションAPIのデモ](/javascript/examples/vibration/) を参照してください。

