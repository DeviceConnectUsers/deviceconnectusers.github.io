# 近接センサーAPI

## 近接センサーのイベントを通知

近接センサーの値が変化したタイミングでイベントを取得します。あらかじめ [近接センサーAPI](/webapi/proximity)の **近接センサーの通知イベントを設定** を実行しておきます。

### 通知される内容

```
{
    "attribute": "onuserproximity", 
    "profile": "proximity", 
    "proximity": {
        "near": true
    }, 
    "serviceId": "Host.e87e3213b730843a437ff6c676899df0.localhost.deviceconnect.org", 
    "sessionKey": "99lzncdi"
}
```

|キー|&nbsp;|型|説明|
|---|------|---|---|
|attribute|&nbsp;|文字列|イベント名。常にonuserproximity|
|profile|&nbsp;|文字列|サービス名。常にproximity|
|serviceId|&nbsp;|文字列|サービスIDを指定します|
|sessionKey|&nbsp;|文字列|WebSocket側と共通の通知を受け取るためのセッションキー|
|proximity|&nbsp;|ハッシュ|&nbsp;|
|&nbsp;|near|真偽値|近くなるとtrue。遠くなるとfalse|
