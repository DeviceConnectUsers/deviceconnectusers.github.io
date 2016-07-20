# Web APIについて

## 基本条件

- **URL**  
localhost
- **ポート番号**  
4035
- **エンドポイント**  
/gotapi/

## DeviceConnectが使える状態かどうかチェックする

DeviceConnectの状態をチェックします。

- **メソッド**  
GET
- **パス**  
/availabillity

**URLの例**

http://localhost:4035/gotapi/availability

### 返却値

以下のような結果が得られます。

```
{
  "result":0,
  "product":"Device Connect Manager",
  "version":"2.0.0"
}
```

|キー|&nbsp;|型|説明|
|---|------|---|---|
|result|&nbsp;|数値|エラーがなければ0|
|product|&nbsp;|文字列|DeviceConnectを提供しているアプリの名前|
|version|&nbsp;|文字列|バージョン番号|

#### エラーの場合

以下のような結果が返ってきます。

```
{
  "result":1,
  "product":"Device Connect Manager",
  "errorCode":18,
  "version":"2.0.0",
  "errorMessage":"Origin is not specified."
}
```

|キー|&nbsp;|型|説明|
|---|------|---|---|
|result|&nbsp;|数値|1|
|product|&nbsp;|文字列|DeviceConnectを提供しているアプリの名前|
|errorCode|&nbsp;|数値|エラー番号。成功した場合は0です。[エラー内容はこちら](./webapi/error)で確認してください。|
|version|&nbsp;|文字列|バージョン番号|
|errorMessage|&nbsp;|文字列|エラーの理由|

### アクセス例

```
$ curl -H "Origin: Null" http://localhost:4035/gotapi/availability
{"result":0,"product":"Device Connect Manager","version":"2.0.0"}
```

## 接続するためのクライアントを作成する

DeviceConnect Managerに接続するためのクライアントを作成します。

- **メソッド**  
GET
- **パス**  
/authorization/grant

**URLの例**

http://localhost:4035/gotapi/authorization/grant

### 返却値

以下のような結果が得られます。

```
{
  "result":0,
  "product":"Device Connect Manager",
  "errorCode":0,
  "version":"2.0.0",
  "clientId":"c48b214c-cad3-4c54-9887-dbfb07f03039",
  "errorMessage":""
}
```

|キー|&nbsp;|型|説明|
|---|------|---|---|
|result|&nbsp;|数値|エラーがなければ0|
|product|&nbsp;|文字列|DeviceConnectを提供しているアプリの名前|
|version|&nbsp;|文字列|バージョン番号|
|errorCode|&nbsp;|数値|エラー番号。成功した場合は0です。[エラー内容はこちら](./webapi/error)で確認してください。|
|errorMessage|&nbsp;|文字列|エラーの理由。成功した場合は空文字列です。|
|clientId|&nbsp;|文字列|DeviceConnect ManagerにつなげるクライアントID|

### アクセス例

```
$ curl -H "Origin: Null" http://localhost:4035/gotapi/authorization/grant
{"result":0,"product":"Device Connect Manager","errorCode":0,"version":"2.0.0","clientId":"679613d3-6a9a-4ff6-b150-33041f99593e","errorMessage":""}
```

## アクセストークンを取得する

DeviceConnect Managerからアクセストークンを取得します。

- **メソッド**  
GET
- **パス**  
/authorization/accesstoken

**URLの例**

http://localhost:4035/gotapi/authorization/accesstoken

### リクエストパラメータ

パラメータは以下が指定可能です。

|パラメータ名|型|説明|例|
|--------|-----|-----------------------|-------------------------------------|
|clientId|文字列|上記で取得したクライアントID|c48b214c-cad3-4c54-9887-dbfb07f03039|
|scope|文字列|利用する機能をカンマ区切りで指定|[スコープについて](./webapi/scope)を参照してください|
|applicationName|文字列|アプリケーション名。任意の名前をつけます|Demo Web Site|

### 返却値

アクセスが成功すると次のような結果が得られます。

```
{
  "accessToken":"32c...b3f",
  "result":0,
  "scopes":[
    {"scope":"servicediscovery","expirePeriod":15552000},
      :
    {"scope":"gpio","expirePeriod":15552000}
  ],
  "product":"Device Connect Manager",
  "errorCode":0,
  "version":"2.0.0",
  "errorMessage":""
}
```

|キー|&nbsp;|型|説明|
|---|------|---|---|
|accessToken|&nbsp;|文字列|DeviceConnect Managerに接続するためのアクセストークン|
|result|&nbsp;|数値|エラーがなければ0|
|product|&nbsp;|文字列|DeviceConnectを提供しているアプリの名前|
|version|&nbsp;|文字列|バージョン番号|
|errorCode|&nbsp;|数値|エラー番号。成功した場合は0です。[エラー内容はこちら](./webapi/error)で確認してください。|
|errorMessage|&nbsp;|文字列|エラーの理由。成功した場合は空文字列です|
|scopes|&nbsp;|配列|スコープ名と有効期限が配列になっています|
|&nbsp;|scope|文字列|スコープ名。[スコープについて](./webapi/scope)を参照してください|
|&nbsp;|expirePeriod|数字|有効期限。15552000は180日|

### アクセス例

```
$ curl -H "Origin: Null" "http://localhost:4035/gotapi/authorization/accesstoken?clientId=679613d3-6a9a-4ff6-b150-33041f99593e&scope=servicediscovery%2Cserviceinformation%2Csystem%2Cbattery&applicationName=Demo%20App"
{"accessToken":"0041c8ffb1b90aa838893f6ca857676b8601114301fc97e98b25436051f52664fd40cff1fb8a3c13","result":0,"scopes":[{"scope":"servicediscovery","expirePeriod":15552000},{"scope":"serviceinformation","expirePeriod":15552000},{"scope":"system","expirePeriod":15552000},{"scope":"battery","expirePeriod":15552000}],"product":"Device Connect Manager","errorCode":0,"version":"2.0.0","errorMessage":""}
```

## サービスを検索する

DeviceConnectが使える機能を検索します。プラグインとしてインストールされているものがリストアップされます。

- **メソッド**  
GET
- **パス**  
/servicediscovery

**URLの例**

http://localhost:4035/gotapi/servicediscovery

### リクエストパラメータ

パラメータは以下が指定可能です。

|パラメータ名|型|説明|例|
|--------|-----|-----------------------|-------------------------------------|
|accessToken|文字列|以前の処理で取得したアクセストークン|c363...216|

### 返却値

アクセスが成功すると次のような結果が得られます。

```
{
    "product": "Device Connect Manager", 
    "result": 0, 
    "services": [
        {
            "config": "HostConfig", 
            "id": "Host.e87...df0.localhost.deviceconnect.org", 
            "name": "Host", 
            "online": true, 
            "scopes": [
                "vibration", 
                  :
                "battery"
            ], 
            "type": "Wifi"
        }, 
        {
            "id": "Pebble001...a10.localhost.deviceconnect.org", 
            "name": "Pebble 0F2B", 
            "online": true, 
            "scopes": [
                "vibration", 
                  :
                "battery"
            ], 
            "type": "Bluetooth"
        }
    ], 
    "version": "2.0.0"
}
```

|キー|&nbsp;|型|説明|
|---|------|---|---|
|result|&nbsp;|数値|エラーがなければ0|
|product|&nbsp;|文字列|DeviceConnectを提供しているアプリの名前|
|version|&nbsp;|文字列|バージョン番号|
|services|&nbsp;|配列|利用できるプラグインが配列になっています|
|&nbsp;|confg|文字列|ない場合もあります|
|&nbsp;|id|文字列|サービスID|
|&nbsp;|name|文字列|サービス名|
|&nbsp;|online|真偽値|利用可否。trueの場合利用可|
|&nbsp;|scopes|配列|利用できる機能（スコープ）が配列になっています。[スコープについて](./webapi/scope)を参照してください|
|&nbsp;|type|文字列|WiFi、Bluetoothなど利用している接続技術が返ります|

### アクセス例

```
$ curl -H "Origin: Null" "http://localhost:4035/gotapi/servicediscovery?accessToken=0041c8ffb1b90aa838893f6ca857676b8601114301fc97e98b25436051f52664fd40cff1fb8a3c13"
{"result":0,"product":"Device Connect Manager","version":"2.0.0","services":[{"config":"HostConfig","online":true,"scopes":["vibration","mediastream_recording","file_descriptor","settings","canvas","phone","system","serviceinformation","keyevent","connect","authorization","notification","touch","servicediscovery","file","proximity","deviceorientation","media_player","battery"],"id":"Host.e87e3213b730843a437ff6c676899df0.localhost.deviceconnect.org","name":"Host","type":"Wifi"},{"online":true,"scopes":["vibration","notification","servicediscovery","settings","canvas","system","serviceinformation","keyevent","deviceorientation","authorization","battery"],"id":"Pebble0017e96d0f2b.d82c1741835939ddedeabe7ac55da10.localhost.deviceconnect.org","name":"Pebble 0F2B","type":"Bluetooth"}]}
```

### サービス情報を得る

各デバイスがサポートしている機能一覧を取得します。

- **メソッド**  
GET
- **パス**  
/serviceinformation

**URLの例**

http://localhost:4035/gotapi/serviceinformation

### リクエストパラメータ

パラメータは以下が指定可能です。

|パラメータ名|型|説明|例|
|--------|-----|-----------------------|-------------------------------------|
|serviceId|文字列|以前の処理で取得したサービスIDを指定します|Pebble00...org|
|accessToken|文字列|以前の処理で取得したアクセストークン|c363...216|

### 返却値

アクセスが成功すると次のような結果が得られます。

```
{
    "connect": {}, 
    "product": "Device Connect Manager", 
    "result": 0, 
    "supports": [
        "vibration", 
          :
        "battery"
    ], 
    "version": "2.0.0"
}
```

|キー|&nbsp;|型|説明|
|---|------|---|---|
|result|&nbsp;|数値|エラーがなければ0|
|product|&nbsp;|文字列|DeviceConnectを提供しているアプリの名前|
|version|&nbsp;|文字列|バージョン番号|
|supports|&nbsp;|配列|利用できる機能名が文字列で入ってきます|
|connect|&nbsp;|ハッシュ|不明。空で返ってきます|

### アクセス例

```
$ curl -H "Origin: Null" "http://localhost:4035/gotapi/serviceinformation?serviceId=Host.e87e3213b730843a437ff6c676899df0.localhost.deviceconnect.org&accessToken=c363c203b662d044085465213ee64c9c4b0b64a7802f1adaee4c98729d2dc9cf96d8d6cbeaeba216"
{"supports":["vibration","mediastream_recording","file_descriptor","settings","canvas","phone","system","serviceinformation","keyevent","connect","authorization","notification","touch","servicediscovery","file","proximity","deviceorientation","media_player","battery"],"result":0,"product":"Device Connect Manager","version":"2.0.0","connect":{}}
```

## 機能を実行する

DeviceConnectを使って機能を実行します。

- [バイブレーションAPI](webapi/vibration)

