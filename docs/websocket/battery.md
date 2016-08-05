## バッテリーの状態が変わったらイベント通知を受け取る

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

|キー|&nbsp;|型|説明|
|---|------|---|---|
|attribute|&nbsp;|文字列|イベント名。常にonchargingchange|
|profile|&nbsp;|文字列|サービス名。常にbattery|
|serviceId|&nbsp;|文字列|サービスIDを指定します|Pebble00...org|
|sessionKey|&nbsp;|文字列|WebSocket側と共通の通知を受け取るためのセッションキー|
|battery|&nbsp;|ハッシュ|&nbsp;|
|&nbsp;|charging|真偽値|充電中ならtrue、充電ケーブルが外れるとfalse|

### アクセス例

```
$ wscat -c ws://localhost:4035/websocket -o "Null"
connected (press CTRL+C to quit)
> {"sessionKey": "aaa"}
< {"battery":{"charging":false},"profile":"battery","serviceId":"Host.e87...org","attribute":"onchargingchange","sessionKey":"aaa"}
```
