# JavaScriptでのDeviceConnectアプリケーションの作り方

DeviceConnectを利用する際には、

1. デバイスコネクトの状態チェック  
[生死確認API](/webapi/availabillity/)を使います。
1. DeviceConnectクライアントの作成  
[認可API](/webapi/grant)を使います。
1. アクセストークンの取得  
[認証API](/webapi/authorization)を使います。

までを基本として行わなければなりません。その後のWeb APIを呼ぶ部分については自分で利用したい機能は決まっているので大きな問題はないでしょう。ここではアクセストークンの取得までについて、ごく基本的なコードの書き方を紹介します。

## HTMLファイルでSDK読み込み

まず最初に[JavaScript SDK](https://raw.githubusercontent.com/DeviceConnect/DeviceConnect-JS/master/dConnectSDKForJavascript/dconnectsdk-2.0.0.js)を読み込みます。

```
<script type="text/javascript" src="javascripts/dconnectsdk-2.0.0.js"></script>
```

## JavaScriptのコード

### 生死確認を行う

dconnectsdk-*.jsに含まれる dConnect.checkDeviceConnect を使って生死確認を行います。

```
dConnect.checkDeviceConnect(
  function(apiVersion) {
    // 動作している場合
  }, function(errorCode, errorMessage) {
    // 動作していない場合
  });
```

### 認可を得る

dconnectsdk-*.jsに含まれる dConnect.authorization を使って認可を得ます。

```
var scopes = Array("battery", "serviceinformation",
                   "servicediscovery", "file", 
                   "mediastream_recording", "omnidirectional_image"
                   );
var applicationName = "YOUR_APPLICATION_NAME";
dConnect.authorization(scopes, applicationName,
  function(clientId, accessToken) {
    // 許可が得られた場合
  },
  function(errorCode, errorMessage) {
    // 許可が得られなかった場合
  });
```

### 認証を得る

dconnectsdk-*.jsに含まれる dConnect.discoverDevices を使って認証を得ます。

```
// accessToken は先ほど取得したものを使います
dConnect.discoverDevices(accessToken,
  function(json) {
    // json.servicesの中に処理が可能なサービスが返ってきます
  },
  function(errorCode, errorMessage) {
    // 認証が得られなかった場合
  });
```

----

ここからはデバイス毎に処理が分かれます。以下を参照にしてください。

