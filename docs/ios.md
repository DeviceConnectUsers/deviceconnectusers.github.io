iOS端末を使ってDeviceConnectを体験します。今回はPebbleと連携してみたいと思います。

## 必要なもの

- iOS端末
- Pebble

## アプリのインストール

今回はアプリのビルドを行わず、GClue社がリリースしている[Device Web API Manager](http://www.gclue.io/dwa/index.html)をインストールします。アプリをビルドしてみたい方は[DeviceConnect Browserをビルドする](./ios/browser)を参照してください。

[DeviceWebAPIBrowserを App Store で](https://itunes.apple.com/jp/app/devicewebapibrowser/id994422987?mt=8&ign-mpt=uo%3D4)

![](/images/ios/deviceconnect-ios-1.png)

このアプリはDeviceConnectのフロントエンドとして使えるアプリです。

## アプリの起動

アプリを起動すると次のような画面が表示されます。

![](/images/ios/deviceconnect-ios-2.png)

ここで、URLに `http://deviceconnectusers.github.io/manager/` と入力して検索ボタンをタップします。次のような画面が出てくればOKです。

![](/images/ios/getting-started-ios-9.png)

さらにLaunch UI-App(HTML5)をタップします。

![](/images/ios/getting-started-ios-8.png)

この画面が表示されたら、まずはアクセストークンを取得します。accessTokenをタップします。

![](/images/ios/getting-started-ios-8.png)

そうすると下の画面のようにアクセストークンを求めるダイアログが出ますので、ACCEPTをタップします。

![](/images/ios/getting-started-ios-7.png)

承認すると先ほどと同じ画面に戻ってきますが、今回はアクセストークンが入っているのが確認できるはずです。

![](/images/ios/getting-started-ios-6.png)

## デバイスを検索する

次に利用できるデバイスを検索します。Search Deviceをタップすると利用できるデバイスが一覧表示されます。

![](/images/ios/getting-started-ios-5.png)

今回はHost: iPhone 6 Plusをタップします。そうすると利用できる機能が一覧表示されます。

![](/images/ios/getting-started-ios-4.png)

例えばバイブレーションを選択します。パターンを選択してVibrateをタップするとデバイスが震えるはずです。

![](/images/ios/getting-started-ios-3.png)

Phone APIを使って電話をかけることもできます。

![](/images/ios/getting-started-ios-2.png)

DeviceConnectには他にもたくさんのプラグインがリリースされており、それを使うことでウェアラブルデバイスがWeb APIを通して操作できるようになります。ぜひ試してみてください！
