デバイス情報を取得するところまでは[DeviceConnectアプリケーションの作り方](/javascript/basic/)を参照してください。 `app.services` にデバイス情報が入っていることとします。

## コネクトAPIについて

[コネクトAPI](/webapi/connect/) によれば、Web APIは次のようになります。

```
GET  /gotapi/connect/[type]
```

typeはbluetooth/ble/wifi/nfcの4つが指定できます。例えばBluetoothの状態を取得する場合は次のようになります。

```
GET /gotapi/connect/bluetooth
```

実行時のJavaScriptは次のようになります。 dConnect.URIBuilder() を使って URL をビルドするのが良いでしょう。

```
// バイブレーションを実行したいデバイスを検索しています
var service = app.services.filter(function(s) {return s.config == "HostConfig"})[0];

// URLを作成します
var builder = new dConnect.URIBuilder();
builder.setProfile("connect");
builder.setAttribute('bluetooth');
builder.setServiceId(service.id);
builder.setAccessToken(app.accessToken);
var uri = builder.build();

// GETメソッドを実行します
dConnect.get(uri, null, function(json) {
  if (json.enable) {
    // Bluetoothが有効
  } else {
    // Bluetoothが無効
  }
},
function(errorCode, errorMessage) {
  // 実行時エラー
  console.error(errorMessage)
});
```

## ステータスの変更通知を受け取る

BluetoothやWifiのステータスが変わったタイミングで通知を受け取るにはWebSocketを使います。WebSocketを受け取るためには次のようなコードを実行します。アクセストークンを指定して、コールバック先のWebSocketを受け取るための関数を指定します。

```
if (!dConnect.isWebSocketReady()) {
  if (dConnect.isConnectedWebSocket())
    dConnect.disconnectWebSocket();
  dConnect.connectWebSocket(accessToken, onWebSocketMessage);
} else {
  console.log('WebSocket is ready.');
}
```

この関数にはコードとメッセージの二つの引数が送られます。

```
var onWebSocketMessage = function(code, message) {
  alert(code);
  console.log('code', code, 'message', message);
};
```

次にWeb APIで通知を受け取る設定を行います。

```
var builder = new dConnect.URIBuilder();

builder.setProfile("connect");
builder.setAttribute('onbluetoothchange');
builder.setServiceId(service.id);
builder.setAccessToken(app.accessToken);

// セッションキーを生成します
var sessionKey = Math.random().toString(36).slice(-8);
builder.setSessionKey(sessionKey);

var uri = builder.build();
dConnect.put(uri, null, null, function(json) {
  // イベントの設定完了
},
function(errorCode, errorMessage) {
  // 許可が得られなかった場合
  console.error(errorMessage)
});
```

----

実際の処理、コードについては [コネクトAPIのデモ](/javascript/examples/connect/) を参照してください。

