# 外部ブラウザから利用する（iOS）

iOSで提供されているDevice Web API Browserは外部ブラウザからの利用はサポートされていません。しかし、アプリケーションを作っている時にはデスクトップブラウザから使えると便利です。

そこで、[DeviceConnect Browserをビルドする](/ios/browser/)を延長して、外部ブラウザからも利用できるようになります。

### アクセス元の制御を外す

最初に dConnectSDK/dConnectSDKForIOS/DConnectSDK/Classes/protocol/DConnectServerProtocol.m を開いて修正します。以下の部分はまるごとコメントアウトしてください。

```
if (![[[request url] host] isEqualToString:@"localhost"]) {
    // todo: 外部からリクエストを受け付けるかどうか
    NSString *dataStr =
    [NSString stringWithFormat:
     @"{\"%@\":%lu,\"%@\":%lu,\"%@\":\"Not localhost.\"}",
     DConnectMessageResult, (unsigned long)DConnectMessageResultTypeError,
     DConnectMessageErrorCode, (unsigned long)DConnectMessageErrorCodeIllegalServerState,
     DConnectMessageErrorMessage];
    [response setHeader:@"Content-Type" value:@"application/json"];
    [response respondWithString:dataStr];
    return;
}
```

## CORSを外す

iOSではCORSの制御機能があるのですが、使われていないようです。そこで、コードからCORS制御部分を外します。dConnectSDK/dConnectSDKForIOS/DConnectSDK/Classes/DConnectManager.m を開きます。以下をまるごとコメントアウトします。

```
if (![_self allowsOriginOfRequest:request]) {
    [response setErrorToInvalidOrigin];
    DConnectProfile *profile = [_self profileWithName:profileName];
    if (profile && [profile isKindOfClass:[DConnectManagerAuthorizationProfile class]]) {
        DConnectManagerAuthorizationProfile *authProfile =
        (DConnectManagerAuthorizationProfile *) profile;
        [authProfile didReceiveInvalidOriginRequest:request response:response];
    }
    [_self sendResponse:response];
    return;
}
```

## SDKをリビルド

修正が終わったらDConnectSDK_frameworkを実行してSDKリビルドします。その後、アプリをビルドします。

## ブラウザからアクセスする

[こちらのデモサイト](https://deviceconnectusers.github.io/manager/) からアクセスします。クエリとして?ip=(iOSデバイスのIPアドレス)を指定してください。例えば次のようなURLになります。

```
https://deviceconnectusers.github.io/manager/?ip=192.168.0.10
```

そうするとデスクトップのブラウザからiOSデバイスへアクセスできるようになります。

----

この方法を使えばDevice Connectアプリケーションの開発がスムーズになるでしょう。セキュリティ上の問題がありますのでApp Storeに出ているアプリでは外部アクセスは許可されていません。あくまでも開発者用として利用してください。
