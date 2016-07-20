# バイブレーションAPI

デバイスを指定したパターンで動かします。

## 基本情報

エンドポイントなどは[Web APIについて](../webapi/#_1)を参照してください。

## パス

- **メソッド**  
PUT
- **パス**  
/vibration/vibrate

**URLの例**

http://localhost:4035/gotapi/vibration/vibrate

### リクエストパラメータ

パラメータは以下が指定可能です。



|パラメータ名|型|説明|例|
|--------|-----|-----------------------|-------------------------------------|
|serviceId|文字列|サービスIDを指定します|Pebble00...org|
|accessToken|文字列|取得したアクセストークン|c363...216|
|pattern|文字列|バイブレーションを実行するパターン（数字）をカンマでつないで指定します|

#### バイブレーションパターンの設定例

バイブレーションを実行する時間はmsで指定します。

例）100msを4回繰り返す場合

pattern=100%2C100%2C100%2C100

### 返却値

アクセスが成功すると次のような結果が得られます。

```
{
    "product": "Device Connect Manager", 
    "result": 0, 
    "version": "2.0.0"
}
```

|キー|&nbsp;|型|説明|
|---|------|---|---|
|result|&nbsp;|数値|エラーがなければ0|
|product|&nbsp;|文字列|DeviceConnectを提供しているアプリの名前|
|version|&nbsp;|文字列|バージョン番号|

### アクセス例

```
$ curl -X PUT -H "Origin: Null" "http://localhost:4035/gotapi/vibration/vibrate?serviceId=Host.e87...org&accessToken=c36...216&pattern=100%2C100%2C100%2C100"
{"result":0,"product":"Device Connect Manager","version":"2.0.0"}
```
