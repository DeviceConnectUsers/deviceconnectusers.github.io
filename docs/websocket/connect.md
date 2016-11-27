# コネクトAPI

## Bluetoothのステータスが変わったら通知

Bluetoothのステータスが変わったらイベントを通知します。あらかじめ[コネクトAPI](/webapi/connect)の **Bluetoothステータス変更イベントの設定** を設定しておきます。

### 通知される内容

実際に通知される内容の例です。

```
{
    "attribute": "onbluetoothchange", 
    "connectStatus": {
        "enable": false
    }, 
    "profile": "connect", 
    "serviceId": "Hos...org", 
    "sessionKey": "925ljtt9"
}
```

|キー|&nbsp;|型|説明|
|---|------|---|---|
|attribute|&nbsp;|文字列|イベント名。常にonbluetoothchange|
|profile|&nbsp;|文字列|サービス名。常にconnect|
|serviceId|&nbsp;|文字列|サービスIDを指定します|
|sessionKey|&nbsp;|文字列|WebSocket側と共通の通知を受け取るためのセッションキー|
|connectStatus|&nbsp;|ハッシュ|&nbsp;|
|&nbsp;|enable|真偽値|利用可能ならtrue、利用不可ならfalse|

## BLEのステータスが変わったら通知

BLEのステータスが変わったらイベントを通知します。あらかじめ[コネクトAPI](/webapi/connect)の **BLEステータス変更イベントの設定** を設定しておきます。

### 通知される内容

実際に通知される内容の例です。

```
{
    "attribute": "onblechange", 
    "connectStatus": {
        "enable": false
    }, 
    "profile": "connect", 
    "serviceId": "Hos...org", 
    "sessionKey": "925ljtt9"
}
```

|キー|&nbsp;|型|説明|
|---|------|---|---|
|attribute|&nbsp;|文字列|イベント名。常にonblechange|
|profile|&nbsp;|文字列|サービス名。常にconnect|
|serviceId|&nbsp;|文字列|サービスIDを指定します|
|sessionKey|&nbsp;|文字列|WebSocket側と共通の通知を受け取るためのセッションキー|
|connectStatus|&nbsp;|ハッシュ|&nbsp;|
|&nbsp;|enable|真偽値|利用可能ならtrue、利用不可ならfalse|


## WiFiのステータスが変わったら通知

WiFiのステータスが変わったらイベントを通知します。あらかじめ[コネクトAPI](/webapi/connect)の **WiFiステータス変更イベントの設定** を設定しておきます。

### 通知される内容

実際に通知される内容の例です。

```
{
    "attribute": "onwifichange", 
    "connectStatus": {
        "enable": false
    }, 
    "profile": "connect", 
    "serviceId": "Hos...org", 
    "sessionKey": "925ljtt9"
}
```

|キー|&nbsp;|型|説明|
|---|------|---|---|
|attribute|&nbsp;|文字列|イベント名。常にonwifichange|
|profile|&nbsp;|文字列|サービス名。常にconnect|
|serviceId|&nbsp;|文字列|サービスIDを指定します|
|sessionKey|&nbsp;|文字列|WebSocket側と共通の通知を受け取るためのセッションキー|
|connectStatus|&nbsp;|ハッシュ|&nbsp;|
|&nbsp;|enable|真偽値|利用可能ならtrue、利用不可ならfalse|

## NFCのステータスが変わったら通知

NFCのステータスが変わったらイベントを通知します。あらかじめ[コネクトAPI](/webapi/connect)の **NFCステータス変更イベントの設定** を設定しておきます。

### 通知される内容

実際に通知される内容の例です。

```
{
    "attribute": "onnfcchange", 
    "connectStatus": {
        "enable": false
    }, 
    "profile": "connect", 
    "serviceId": "Hos...org", 
    "sessionKey": "925ljtt9"
}
```

|キー|&nbsp;|型|説明|
|---|------|---|---|
|attribute|&nbsp;|文字列|イベント名。常にonnfcchange|
|profile|&nbsp;|文字列|サービス名。常にconnect|
|serviceId|&nbsp;|文字列|サービスIDを指定します|
|sessionKey|&nbsp;|文字列|WebSocket側と共通の通知を受け取るためのセッションキー|
|connectStatus|&nbsp;|ハッシュ|&nbsp;|
|&nbsp;|enable|真偽値|利用可能ならtrue、利用不可ならfalse|
