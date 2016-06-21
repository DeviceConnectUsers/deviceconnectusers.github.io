# はじめてみよう（iOS）

iOS端末を使ってDeviceConnectを体験します。今回はPebbleと連携してみたいと思います。

## 必要なもの

- iOS端末
- Pebble

## アプリのインストール

今回はアプリのビルドを行わず、GClue社がリリースしている[Device Web API Manager](http://www.gclue.io/dwa/index.html)をインストールします。

[DeviceWebAPIBrowserを App Store で](https://itunes.apple.com/jp/app/devicewebapibrowser/id994422987?mt=8&ign-mpt=uo%3D4)

![](/images/ios/deviceconnect-ios-1.png)

このアプリはDeviceConnectのフロントエンドとして使えるアプリです。

## アプリの起動

アプリを起動すると次のような画面が表示されます。

![](/images/ios/deviceconnect-ios-2.png)

ここで、URLに `https://www.gclue.io/dwa/demo/` と入力して検索ボタンをタップします。次のような画面が出てくればOKです。

![](/images/ios/deviceconnect-ios-5.png)

ここでは加速度 + ライトをタップします。そうすると、次のようにデータ取得に関する承認ダイアログが表示されます。

![](/images/ios/deviceconnect-ios-6.png)

今回は加速度センサーとしてPebbleを使います。チュートリアルに沿って進めていきます。

![](/images/ios/deviceconnect-ios-8.png)

DeviceConnect用のアプリをPebbleにインストールします。

![](/images/ios/deviceconnect-ios-9.png)

アプリがインストールされると、加速度センサーの候補としてPebbleが表示されるようになります。

![](/images/ios/deviceconnect-ios-10.png)

このようにPebbleとDeviceConnectとで通信を行っているログが表示されます。

![](/images/ios/deviceconnect-ios-12.jpg)

DeviceConnectにはたくさんのプラグインがリリースされており、それを使うことでウェアラブルデバイスがJavaScriptから操作できるようになります。ぜひ試してみてください！
