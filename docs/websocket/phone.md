# 電話API

## 電話のステータスが変わった際のイベント通知

電話APIを経由してかけた電話のステータスが変わったタイミングでイベント通知されます。あらかじめ [電話API](/webapi/phone)の **通話ステータス変更イベントを設定** を実行しておきます。

### 通知される内容

```
{
    "attribute": "onconnect", 
    "profile": "phone", 
    "serviceId": "Hos...org", 
    "sessionKey": "6bb...8f1",
    "phoneStatus": {
        "phoneNumber": "99999999999", 
        "state": 0
    }
}
```

|キー|&nbsp;|型|説明|
|---|------|--|--|
|attribute|&nbsp;|文字列|イベント名。常にonconnect|
|profile|&nbsp;|文字列|phoneと入ります|
|serviceId|&nbsp;|文字列|サービスID|
|sessionKey|&nbsp;|文字列|WebSocketのキー|
|phoneStatus|&nbsp;|オブジェクト|&nbsp;|
|&nbsp;|phoneNumber|文字列|電話番号|
|&nbsp;|state|数字|0（通話開始）1（通話失敗）2（通話終了）|

