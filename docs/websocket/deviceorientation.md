# デバイス向き/加速度API

デバイスの向きや加速度を取得するWeb APIです。一度だけ取得することも、動きに合わせてイベント通知で受け取ることもできます。
## 傾き、加速度を連続的に受け取る

```
{
    "attribute": "ondeviceorientation", 
    "orientation": {
        "acceleration": {
            "x": 0.023899763822555542, 
            "y": -0.009312212467193604, 
            "z": -0.010986328125
        }, 
        "accelerationIncludingGravity": {
            "x": -0.1999158412218094, 
            "y": 0.2849099934101105, 
            "z": 9.78869342803955
        }, 
        "interval": 43, 
        "rotationRate": {
            "alpha": 0, 
            "beta": 0, 
            "gamma": 0
        }
    }, 
    "profile": "deviceorientation", 
    "serviceId": "Hos...org", 
    "sessionKey": "537...8d6"
}
```

|キー|&nbsp;|&nbsp;|型|説明|
|---|------|---|---|---|
|attribute|&nbsp;|&nbsp;|文字列|イベント名。常にondeviceorientation|
|profile|&nbsp;|&nbsp;|文字列|サービス名。常にdeviceorientation|
|serviceId|&nbsp;|&nbsp;|文字列|サービスIDを指定します|
|sessionKey|&nbsp;|&nbsp;|文字列|WebSocket側と共通の通知を受け取るためのセッションキー|
|orientation|&nbsp;|&nbsp;|ハッシュ|&nbsp;|
|&nbsp;|accelerationIncludingGravity|&nbsp;|ハッシュ|
|&nbsp;|&nbsp;|x|数値|x軸の値|
|&nbsp;|&nbsp;|y|数値|y軸の値|
|&nbsp;|&nbsp;|z|数値|z軸の値|
|&nbsp;|accelerationIncludingGravity|&nbsp;|ハッシュ|
|&nbsp;|&nbsp;|x|数値|x軸の値|
|&nbsp;|&nbsp;|y|数値|y軸の値|
|&nbsp;|&nbsp;|z|数値|z軸の値|
|&nbsp;|interval|&nbsp;|数値|提示実行のインターバル|
|&nbsp;|rotationRate|&nbsp;|ハッシュ|
|&nbsp;|&nbsp;|alpha|数値|x軸の傾き|
|&nbsp;|&nbsp;|beta|数値|y軸の傾き|
|&nbsp;|&nbsp;|gamma|数値|Z軸の傾き|

### アクセス例

```
$ wscat -c ws://localhost:4035/websocket -o "Null"
connected (press CTRL+C to quit)
> {"sessionKey": "aaa"}
< {"orientation":{"interval":299,"accelerationIncludingGravity":{"x":9.96696,"y":0.07848000000000001,"z":0.7063200000000001}},"profile":"deviceorientation","serviceId":"Peb...org","attribute":"ondeviceorientation","sessionKey":"576...cef"}
```
