# デバイス向き/加速度API

デバイスの向きや加速度を取得します。WebSocketを使うことで継続的な変化を取得できます。

## 傾き、加速度を連続的に受け取る

```
{
    "attribute": "ondeviceorientation", 
    "orientation": {
        "acceleration": {
            "x": -0.016081511974334717, 
            "y": 0.00406956672668457, 
            "z": -0.049208641052246094
        }, 
        "accelerationIncludingGravity": {
            "x": 0.7003039717674255, 
            "y": -0.950498104095459, 
            "z": 9.684545516967773
        }, 
        "interval": 26, 
        "rotationRate": {
            "alpha": -0.06103515739261574, 
            "beta": 0.06103515739261574, 
            "gamma": 0.06103515739261574
        }
    }, 
    "profile": "deviceorientation", 
    "serviceId": "Host...org", 
    "sessionKey": "99lzncdi"
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
