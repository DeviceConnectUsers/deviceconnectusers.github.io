# タッチAPI

## タッチした時にイベント通知

タッチイベントを通知します。あらかじめ[タッチAPI](/webapi/touch)の **タッチイベントを設定** を実行しておきます。

### 通知される内容

```
{
    "attribute": "ontouch", 
    "profile": "touch", 
    "serviceId": "Hos...org", 
    "sessionKey": "99lzncdi", 
    "touch": {
        "touches": [
          {
              "id": 0, 
              "x": 820.1953125, 
              "y": 1953.75
          },
          {
              "id": 1, 
              "x": 820.1953125, 
              "y": 1953.75
          },
          :
        ]
    }
}
```

|キー|&nbsp;|&nbsp;|型|説明|
|---|------|---|---|---|
|attribute|&nbsp;|&nbsp;|文字列|イベント名。常にontouch|
|profile|&nbsp;|&nbsp;|文字列|サービス名。常にtouch|
|serviceId|&nbsp;|&nbsp;|文字列|サービスIDを指定します|
|sessionKey|&nbsp;|&nbsp;|文字列|WebSocket側と共通の通知を受け取るためのセッションキー|
|touch|&nbsp;|&nbsp;|ハッシュ|&nbsp;|
|&nbsp;|touches|&nbsp;|配列|タッチされている分の配列になります|
|&nbsp;|&nbsp;|id|数値|0からインクリメントされます。同じ指であれば同じ数になります（一度離すと無効）|
|&nbsp;|&nbsp;|x|数値|x軸の座標が入ります|
|&nbsp;|&nbsp;|y|数値|y軸の座標が入ります|

## タッチ開始した時にイベント通知

タッチを開始した際にイベントを通知します。あらかじめ[タッチAPI](/webapi/touch)の **タッチを開始した際の通知イベントを設定** を実行しておきます。

### 通知される内容

```
{
    "attribute": "ontouchstart", 
    "profile": "touch", 
    "serviceId": "Hos...org", 
    "sessionKey": "99lzncdi", 
    "touch": {
        "touches": [
            {
                "id": 0, 
                "x": 369.84375, 
                "y": 1608.75
            }, 
            {
                "id": 1, 
                "x": 240.8203125, 
                "y": 1185.625
            }, 
            :
        ]
    }
}
```

|キー|&nbsp;|&nbsp;|型|説明|
|---|------|---|---|---|
|attribute|&nbsp;|&nbsp;|文字列|イベント名。常にontouchstart|
|profile|&nbsp;|&nbsp;|文字列|サービス名。常にtouch|
|serviceId|&nbsp;|&nbsp;|文字列|サービスIDを指定します|
|sessionKey|&nbsp;|&nbsp;|文字列|WebSocket側と共通の通知を受け取るためのセッションキー|
|touch|&nbsp;|&nbsp;|ハッシュ|&nbsp;|
|&nbsp;|touches|&nbsp;|配列|タッチされている分の配列になります|
|&nbsp;|&nbsp;|id|数値|0からインクリメントされます。同じ指であれば同じ数になります（一度離すと無効）|
|&nbsp;|&nbsp;|x|数値|x軸の座標が入ります|
|&nbsp;|&nbsp;|y|数値|y軸の座標が入ります|

## タッチ終了した時にイベント通知

タッチを終了した際にイベントを通知します。あらかじめ[タッチAPI](/webapi/touch)の **タッチを終了した際の通知イベントを設定** を実行しておきます。

### 通知される内容

```
{
    "attribute": "ontouchend", 
    "profile": "touch", 
    "serviceId": "Hos...org", 
    "sessionKey": "99lzncdi", 
    "touch": {
        "touches": [
            {
                "id": 0, 
                "x": 427.1484375, 
                "y": 2036.875
            }, 
            {
                "id": 1, 
                "x": 240.8203125, 
                "y": 1185.625
            }, 
            :
        ]
    }
}
```

|キー|&nbsp;|&nbsp;|型|説明|
|---|------|---|---|---|
|attribute|&nbsp;|&nbsp;|文字列|イベント名。常にontouchend|
|profile|&nbsp;|&nbsp;|文字列|サービス名。常にtouch|
|serviceId|&nbsp;|&nbsp;|文字列|サービスIDを指定します|
|sessionKey|&nbsp;|&nbsp;|文字列|WebSocket側と共通の通知を受け取るためのセッションキー|
|touch|&nbsp;|&nbsp;|ハッシュ|&nbsp;|
|&nbsp;|touches|&nbsp;|配列|タッチされている分の配列になります|
|&nbsp;|&nbsp;|id|数値|0からインクリメントされます。同じ指であれば同じ数になります（一度離すと無効）|
|&nbsp;|&nbsp;|x|数値|x軸の座標が入ります|
|&nbsp;|&nbsp;|y|数値|y軸の座標が入ります|

## タッチしながら指を動かした際のイベントを通知

タッチしながら指を動かした際にイベントを通知します。あらかじめ[タッチAPI](/webapi/touch)の **タッチし続けている際の通知イベントを設定** を実行しておきます。

### 通知される内容

```
{
    "attribute": "ontouchmove", 
    "profile": "touch", 
    "serviceId": "Hos...org", 
    "sessionKey": "99lzncdi", 
    "touch": {
        "touches": [
            {
                "id": 0, 
                "x": 950.44921875, 
                "y": 2096.25
            }, 
            {
                "id": 1, 
                "x": 240.8203125, 
                "y": 1185.625
            }, 
            :
        ]
    }
}
```

|キー|&nbsp;|&nbsp;|型|説明|
|---|------|---|---|---|
|attribute|&nbsp;|&nbsp;|文字列|イベント名。常にontouchmove|
|profile|&nbsp;|&nbsp;|文字列|サービス名。常にtouch|
|serviceId|&nbsp;|&nbsp;|文字列|サービスIDを指定します|
|sessionKey|&nbsp;|&nbsp;|文字列|WebSocket側と共通の通知を受け取るためのセッションキー|
|touch|&nbsp;|&nbsp;|ハッシュ|&nbsp;|
|&nbsp;|touches|&nbsp;|配列|タッチされている分の配列になります|
|&nbsp;|&nbsp;|id|数値|0からインクリメントされます。同じ指であれば同じ数になります（一度離すと無効）|
|&nbsp;|&nbsp;|x|数値|x軸の座標が入ります|
|&nbsp;|&nbsp;|y|数値|y軸の座標が入ります|
