# キーイベントAPI

## キー入力（ダウン）

キーが押されたタイミングでイベントの通知がきます。あらかじめ [キーイベントAPI](/webapi/keyevent)の**キーが押された時に呼ばれるイベントを設定**を実行しておきます。

### 受け取る内容

例えばPebbleの場合、次のようなメッセージになります。

```
{
    "attribute": "ondown", 
    "keyevent": {
        "config": "DOWN", 
        "id": 3
    }, 
    "profile": "keyevent", 
    "serviceId": "Peb...org", 
    "sessionKey": "576...cef"
}
```

Androidデバイスの場合、次のようになります。

```
{
    "attribute": "ondown", 
    "keyevent": {
        "config": "5", 
        "id": 149
    }, 
    "profile": "keyevent", 
    "serviceId": "Hos...org", 
    "sessionKey": "7ja..fr"
}
```

|キー|&nbsp;|型|説明|
|---|------|---|---|
|attribute|&nbsp;|文字列|イベント名。常にondown|
|profile|&nbsp;|文字列|サービス名。常にkeyevent|
|serviceId|&nbsp;|文字列|サービスID|
|sessionKey|&nbsp;|文字列|予めWeb API側で指定した一意のセッションキー|
|keyevent|&nbsp;|オブジェクト|&nbsp;|
|&nbsp;|config|文字列|デバイス側で設定|
|&nbsp;|id|数値|キーのID|

## キー入力（アップ）

キーが押され、指が離れたタイミングでイベントの通知がきます。あらかじめ [キーイベントAPI](/webapi/keyevent)の**キーが押された後に呼ばれるイベントを設定**を実行しておきます。

### 受け取る内容

Androidデバイスの場合、次のようになります。

```
{
    "attribute": "onup", 
    "keyevent": {
        "config": "5", 
        "id": 149
    }, 
    "profile": "keyevent", 
    "serviceId": "Hos...org", 
    "sessionKey": "7ja..fr"
}
```

|キー|&nbsp;|型|説明|
|---|------|---|---|
|attribute|&nbsp;|文字列|イベント名。常にonup|
|profile|&nbsp;|文字列|サービス名。常にkeyevent|
|serviceId|&nbsp;|文字列|サービスID|
|sessionKey|&nbsp;|文字列|予めWeb API側で指定した一意のセッションキー|
|keyevent|&nbsp;|オブジェクト|&nbsp;|
|&nbsp;|config|文字列|デバイス側で設定|
|&nbsp;|id|数値|キーのID|
