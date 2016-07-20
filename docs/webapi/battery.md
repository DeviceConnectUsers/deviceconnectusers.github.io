# バッテリーAPI

## 基本情報

エンドポイントなどは[Web APIについて](../webapi/#_1)を参照してください。

## バッテリー情報の取得

GET　http://192.168.0.20:4035/gotapi/battery?serviceId=Pebble0017e96d0f2b.d82c1741835939ddedeabe7ac55da10.localhost.deviceconnect.org&accessToken=7553b5e5d1450f04a46d09bf8411a39c652d166cb4d1a927ecf5671e7b0ebf27d97dbe846543fbd1

## バッテリーの状態が変わったらイベント通知を受け取る

イベント通知系のAPIを使うにはWebSocketでつないでおく必要があります。方法は[WebSocketについて](./websocket)を参照してください。

### パス

- **メソッド**  
PUT
- **パス**  
/gotapi/battery/onchargingchange

**URLの例**

http://localhost:4035/gotapi/battery/onchargingchange

### リクエストパラメータ

パラメータは以下が指定可能です。


|パラメータ名|型|説明|例|
|--------|-----|-----------------------|-------------------------------------|
|serviceId|文字列|サービスIDを指定します|Pebble00...org|
|accessToken|文字列|取得したアクセストークン|c363...216|
|sessionKey|文字列|WebSocket側と共通の通知を受け取るためのセッションキー|

### 返却値

アクセスが成功すると次のような結果が得られます。

```
{
    "product": "Device Connect Manager", 
    "result": 0, 
    "version": "2.0.0"
}
```

|キー|&nbsp;|型|説明|
|---|------|---|---|
|result|&nbsp;|数値|エラーがなければ0|
|product|&nbsp;|文字列|DeviceConnectを提供しているアプリの名前|
|version|&nbsp;|文字列|バージョン番号|

### イベント通知

イベントの通知はWebSocket側にきます。

```
{
    "attribute": "onchargingchange", 
    "battery": {
        "charging": false
    }, 
    "profile": "battery", 
    "serviceId": "Host.e87...org", 
    "sessionKey": "f5b...c2c"
}
```

### アクセス例

#### Web API

```
$ curl -H "Origin: Null" -X PUT "http://localhost:4035/gotapi/battery/onchargingchange?serviceId=Host.e87...org&accessToken=16f...5af&sessionKey=aaa"
{"result":0,"product":"Device Connect Manager","version":"2.0.0"}
```

#### WebSockt

```
$ wscat -c ws://localhost:4035/websocket -o "Null"
connected (press CTRL+C to quit)
> {"sessionKey": "aaa"}
< {"battery":{"charging":false},"profile":"battery","serviceId":"Host.e87...org","attribute":"onchargingchange","sessionKey":"aaa"}
```
