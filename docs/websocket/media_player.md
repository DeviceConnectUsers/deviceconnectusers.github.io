# メディアプレイヤーAPI

## ステータス変更通知

メディアプレイヤーAPIでは音楽の再生状態やボリュームの変更などに合わせて通知がきます。あらかじめ [メディアプレイヤーAPI](/webapi/media_player)の **メディアレコーダーの通知イベントを設定** を実行しておきます。

### 通知される内容

基本形は次のようになっています。

```
{
    "attribute": "onstatuschange", 
    "mediaPlayer": {
        "mediaId": "/path/to/media.m4a", 
        "mimeType": "audio/mpeg", 
        "pos": 0, 
        "status": "stop", 
        "volume": 0.4666666666666667
    }, 
    "profile": "media_player", 
    "serviceId": "Hos...org", 
    "sessionKey": "99lzncdi"
}
```

|キー|&nbsp;|型|説明|
|---|------|---|---|
|attribute|&nbsp;|文字列|イベント名。常にonstatuschange|
|profile|&nbsp;|文字列|サービス名。常にmedia_player|
|serviceId|&nbsp;|文字列|サービスIDを指定します|
|sessionKey|&nbsp;|文字列|WebSocket側と共通の通知を受け取るためのセッションキー|
|mediaPlayer|&nbsp;|ハッシュ|&nbsp;|
|&nbsp;|mediaId|文字列|実行対象のメディアファイルのパス|
|&nbsp;|mimeType|文字列|実行対象のメディアファイルのmieType|
|&nbsp;|pos|数値|再生箇所|
|&nbsp;|status|文字列|再生状態。詳細は以下を参照してください|
|&nbsp;|volume|数値|ボリューム。0〜1の間|

## ステータスの値について

通知の基本形は同じですが、ステータス（status）の文字が異なります。以下があります。

|statusの値|意味|
|---------|---|
|play|再生|
|stop|再生停止|
|mute|ミュート|
|unmute|ミュート解除|
|pause|一時停止|
|resume|一時停止解除|
|media|再生コンテンツ変更|
|volume|音量変更|
|complete|再生完了|
