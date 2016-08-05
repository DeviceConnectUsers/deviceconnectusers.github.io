# メディアプレイヤーAPI

メディアプレイヤーAPIでは音楽の再生状態やボリュームの変更などに合わせて通知がきます。基本形は次のようになっています。

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
