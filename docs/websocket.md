# WebSocketについて

DeviceConnectのWeb APIを使う際に、幾つかイベント通知系のAPIがあります。これらを利用する際にはWebSocketを使って接続しておく必要があります。

## エンドポイントについて

- **パス**  
/websocket
- **プロトコル**  
WebSocket

## 便利なツール

Node.jsではコンソールからWebSocketサーバに接続できるwscatコマンドが利用できます。

```
npm install -g wscat
```

でインストールできます。

## 接続してみる

例えばDeviceConnect Managerが 192.168.0.20 で動作している場合、

```
$ wscat -c ws://192.168.0.20:4035/websocket -o "Null"
```

で接続できます。接続したらセッションキー（任意の文字列）を指定します。

```
> {"sessionKey": "aaa"}
> 
```

これでWebSocket側は準備完了です。

## Web APIをコールする

次にWeb API側を準備します。例えば[バッテリーステータス変更API]をコールします。

```
$ curl -H "Origin: Null" -X PUT "http://192.168.0.20:4035/gotapi/battery/onchargingchange?serviceId=Host...org&accessToken=16f...5af&sessionKey=aaa"
{"result":0,"product":"Device Connect Manager","version":"2.0.0"}
```

この時、セッションキー（sessionKey）はWebSocketで指定した文字列と同じものを使います。

### イベントを受け取る

後はバッテリーを抜き差ししてイベントがWebSocket側に通知されればOKです。

```
< {"battery":{"charging":false},"profile":"battery","serviceId":"Host.e87...org","attribute":"onchargingchange","sessionKey":"aaa"}
< {"battery":{"charging":true},"profile":"battery","serviceId":"Host.e87...org","attribute":"onchargingchange","sessionKey":"aaa"}
```

## WebSocket APIについて

- [バッテリーAPI](/websocket/battery)
- [コネクトAPI](/websocket/connect)
- [デバイス向き/加速度API](/websocket/deviceorientation)
- [ファイル参照API](/websocket/file_descriptor)
- [キーイベントAPI](/websocket/keyevent)
- [電話API](/websocket/phone)
- [近接センサーAPI](/websocket/proximity)
- [タッチAPI](/websocket/touch)

