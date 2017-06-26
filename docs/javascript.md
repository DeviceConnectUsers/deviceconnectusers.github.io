# はじめてみよう（JavaScript）

JavaScriptを使ってDeviceConnectを体験してみましょう。[Androidのデモアプリをインストールして、外部アクセスを許可](./android)しておけばデスクトップのブラウザから試すこともできます。

## 必要なもの

- Android端末
- 母艦（デスクトップ）

## デモのダウンロード

まず[デモファイル](https://github.com/DeviceConnectUsers/deviceconnectusers.github.io/releases/tag/v2.2.4-release-20170623-demo)をダウンロード、解凍します。

![](/images/android/deviceconnect-android-34.png)

## Webブラウザでアクセス

[Android用ドキュメントの外部から操作してみる](./android)に沿ってインストールとDeviceConnect Managerの起動、設定を行ってください。それが終わったら、デスクトップのブラウザ（Google Chromeなど）で `http://deviceconnectusers.github.io/manager/?ip=(Android端末のIPアドレス)` にアクセスします。Android端末のIPアドレスはそれぞれ読み替えてください。またはadbのポートフォワードを使うこともできます。詳しくは[外部ブラウザからの利用 - DeviceConnect Users](http://localhost:8000/android/external/#adb)を参照してください。

後はDevToolsのコンソールを使って試していきたいと思います。

### アクセストークンを取得する

まず最初に行うのはアクセストークンの取得です。次のようにアクセスします。 myAppNameは自由に決められます。

```
var myAccessToken = "";

// アプリ名
var myAppName = "YOUR_APPLICATION_NAME";

var scopes = Array("battery","serviceinformation", "servicediscovery");

dConnect.authorization(scopes, myAppName,
  function(clientId, newAccessToken) {
    // accessToken
    alert(newAccessToken);
    myAccessToken = newAccessToken;
    
  },
  function(errorCode, errorMessage) {
    console.log(errorMessage);
    alert("Failed to get accessToken.");
  }
)
```

dConnect.authorizationを実行する際にはスコープを設定する必要があります。全部リストアップするとこれくらいあります。Android系で見るようなバッテリー、ファイル、バイブレーションなどもありますが、ヘルスや湿度といったウェアラブル、センサー系のスコープも用意されています。

- servicediscovery
- serviceinformation
- system
- battery
- connect
- deviceorientation
- fileDescriptor
- file
- mediaPlayer
- mediastreamRecording
- notification
- phone
- proximity
- settings
- vibration
- light
- remoteController
- driveController
- mhealth
- sphero
- dice
- temperature
- camera
- canvas
- health
- touch
- humandetect
- keyevent
- omnidirectionalImage
- tv
- powermeter
- humidity
- illuminance
- videochat
- airconditioner
- gpio


アクセス許可ですが、デスクトップではなくAndroid側に承認画面が出るので注意してください。

![](/images/javascript/deviceconnect-javascript.png)

許可すると、myAccessTokenに文字列が入ります。

```
> myAccessToken
"3e5...66"
```

## サービスIDを取得する

次にサービスIDを取得します。これはプラグインごとに異なるサービスIDとなっています。今回のデモアプリの場合、Hostというサービスになっています。

コードは次のようになります。アクセストークンを使ってアクセスします。

```
// サービスIDを格納する
var myServiceId;

// デバイスの検索
dConnect.discoverDevices(myAccessToken, function(json) {
    var str = "";
    if (json.result == 0) {
        console.log(json.services);
        // サービスIDを取得する。
        // 名前などから使用するサービスを取得する。
        for (var i = 0; i < json.services.length; i++) {
            if (json.services[i].name.toUpperCase() == "HOST") {
                myServiceId = json.services[i].id;
            }
        }
    } else {
        alert("Failed to get services.");
    }
}, function(errorCode, errorMessage) {
    alert(errorMessage);
});
```

この結果、myServiceIdには次のような文字列が入ってきます。

```
> myServiceId
"Host.e87e3213b730843a437ff6c676899df0.localhost.deviceconnect.org"
```

## デバイスデータを取得してみる

最後にデバイスデータを取得してみます。バッテリーの状態を取得します。あらかじめ設定していたスコープ、サービスIDそしてアクセストークンを使って取得します。

```
var builder = new dConnect.URIBuilder();
builder.setProfile("battery");
builder.setServiceId(myServiceId);
builder.setAccessToken(myAccessToken);

var uri = builder.build();

dConnect.get(uri, null,
  // レスポンスが送られてくる
  function(json) {
    if (json.result == 0) {
      var level = json.level * 100;
      console.log('level', level);
    } else {
      alert('Error');
    }
  },
  function(errorCode, errorMessage) {
    alert(errorMessage);
});
```

これを実行すると、次のようにバッテリーの状態が返ってきます。100%充電されています。

```
level 100
```

----

基本的にはサービスID、アクセストークン、スコープの3つをgetメソッドで実行すれば結果がコールバックされてきます。インタフェースが統一されれば、各デバイスごとのインタフェースを気にしなくて良くなるので使い勝手が良くなるでしょう。


