# はじめてみよう（Android）

Android端末を使ってDeviceConnectを体験します。これは実機だけでできます。

## 下準備

こちらの方法はインストールが簡単ですが、ネットワーク接続が必要です。オフラインで試す場合は[下準備（オフラインで試す）](/android/offline)を参照してください。

## Device Connect Managerをインストール

まずDeviceConnect Managerをインストールします。Google Playで[Device Web API Manager - Google Play の Android アプリ](https://play.google.com/store/apps/details?id=org.deviceconnect.android.manager&hl=ja)をインストールします。

## Device Connect Managerを起動

DeviceConnect Managerを起動して、Originブロック機能を無効にしてください。

![](/images/android/getting-started-1.png)

設定が終わったらDeviceConnect Managerを有効にして仮想サーバを起動します。

![](/images/android/deviceconnect-android-20.png)

## UIアプリを起動

Webブラウザを立ち上げて[デモの管理画面](http://deviceconnectusers.github.io/manager/)にアクセスします。なお、この際以下のようなエラーが出ることがあります。

![](/images/android/deviceconnect-android-21.png)

この場合はDeviceConnectManagerアプリを開いて、DeviceConnect Managerをオンにしてください。

![](/images/android/deviceconnect-android-20.png)

以下の画面がLaunch UI-Appを開いた画面です。

![](/images/android/getting-started-2.png)

## Hostプラグインをインストールする

まず現在使っているAndroidデバイスを操作するためのHostプラグインをインストールします。一覧の中にあるHostプラグインをタップしてインストールしてください。このプラグインは野良なので、セキュリティ上の制限を解除しないとインストールできないので注意してください。プラグインは自分でビルドすることもできます。

Download APKをタップします。そして、その中にあるAndroid Hostをタップします。

![](/images/android/getting-started-3.png)

後はこのダウンロードしたAPKファイルをインストールしてください。

## DeviceConnectを試す

まず最初にaccessTokenボタンをタップします。

![](/images/android/deviceconnect-android-18-2.png)

そうするとアクセス許可を求める承認ダイアログが出ますので、ACCEPTをタップします。

![](/images/android/deviceconnect-android-16.png)

承諾して最初の画面に戻ってくると、accessTokenが取得できているのが分かるはずです。

![](/images/android/deviceconnect-android-15.png)

## 使ってみる

では実際に機能を試してみます。左下にあるドロップダウンをタップします。

![](/images/android/deviceconnect-android-18-3.png)

そうすると使える機能が一覧で表示されます。

![](/images/android/deviceconnect-android-14.png)

今回は例えばVibration（バイブレーション）を選択しました。

![](/images/android/deviceconnect-android-13.png)

さらにSearch Deviceをタップすると、DeviceConnectが使えるデバイス（今回は実機）がリストアップされます。これはプラグインによって他のウェアラブルデバイスなどを対応させられます。

![](/images/android/deviceconnect-android-12.png)

Hostというのをタップすると、Profile Listが表示されますので、この中からVibrationを選択します。

![](/images/android/deviceconnect-android-11.png)

この画面でVibrateをタップすると、実際に実機がバイブレーションします。ローカルのHTMLファイルからDeviceConnect WebAPIを通じて実機を操作できるのが分かるでしょう。

![](/images/android/deviceconnect-android-10.png)

さらにバイブレーションのタイミングを変更することもできます。

![](/images/android/deviceconnect-android-9.png)

## 外部のブラウザから利用する

さらにデスクトップなど、外部のブラウザからDeviceConnectにアクセスできます。[外部ブラウザからの利用 - DeviceConnect Users](/android/external/)を参照してください。

----

DeviceConnectにはたくさんのプラグインがリリースされており、それを使うことでウェアラブルデバイスがJavaScriptから操作できるようになります。ぜひ試してみてください！

