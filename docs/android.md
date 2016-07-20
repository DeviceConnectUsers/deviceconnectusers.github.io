# はじめてみよう（Android）

Android端末を使ってDeviceConnectを体験します。これは実機だけでできます。

## 必要なもの

- Android端末
- 母艦（デスクトップ）
- ファイルマネージャアプリ（[ファイル マネージャー](https://play.google.com/store/apps/details?id=com.rhmsoft.fm&hl=ja)など）

## デモのダウンロード

まず[デモファイル](https://github.com/DeviceConnect/DeviceConnect-Docs/blob/master/Bin/demoWebSite.zip)をダウンロード、解凍します。

![](/images/android/deviceconnect-android-34.png)

そして、この内容をAndroidのストレージにコピーします。Mac OSXの場合は[Android File Transfer](https://www.android.com/filetransfer/)を使ってください。

![](/images/android/deviceconnect-android-30.png)

コピーが終わるとこのようになります。

![](/images/android/deviceconnect-android-29.png)

## Chromeブラウザで開く&アプリのインストール

次にAndroidのGoogle Chromeを使って、先ほどコピーしたindex.htmlを開きます。この時、ファイルマネージャを使うと便利です。

![](/images/android/deviceconnect-android-28.png)

まずDownload APKをクリックします。そして一覧が表示されるので、DeviceConnectManagerとAndroid Hostをインストールします。

![](/images/android/deviceconnect-android-27.png)

デフォルトの設定ではインストールできないので、設定アプリのセキュリティの中にある**提供元不明のアプリのインストール**を許可してください。

![](/images/android/deviceconnect-android-25.png)

2つのアプリをインストールします。

![](/images/android/deviceconnect-android-23.png)

## UIアプリを起動

先ほどのHTMLの画面に戻って、Launch UI-App（HTML5）を選択します。なお、この際以下のようなエラーが出ることがあります。

![](/images/android/deviceconnect-android-21.png)

この場合はDeviceConnectManagerアプリを開いて、DeviceConnect Managerをオンにしてください。

![](/images/android/deviceconnect-android-20.png)

以下の画面がLaunch UI-Appを開いた画面です。

![](/images/android/deviceconnect-android-18.png)

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

## 外部から操作してみる

DeviceConnectはWebAPIなので、外部からコールすることもできます。ただしセキュリティの問題もあり、デフォルトでは弾いています。DeviceConnect Managerアプリを立ち上げて、Allow External IPをチェックします。

![](/images/android/deviceconnect-android-7.png)

ではデスクトップのブラウザ（ChromeやFirefoxなど）で同じようにローカルのindex.htmlを開きます。この時、index.htmlの後に **?ip=(DeviceConnectが立ち上がっているAndroidのIPアドレス)** を指定します。例えば `file:///path/to/demoWebSite/index.html?ip=192.168.0.20` のようになります。表示したらAndroidと同じようにaccessTokenを取得します。

![](/images/android/deviceconnect-android-6.png)

デスクトップからバイブレーションを実行してみます。

<iframe width="420" height="315" src="https://www.youtube.com/embed/6vdS9k1AdAQ" frameborder="0" allowfullscreen></iframe>

他にも例えばバッテリーの情報が取れたり、

![](/images/android/deviceconnect-android-5.png)

バッテリーが充電状態かどうかの判定もできます。

![](/images/android/deviceconnect-android-4.png)

----

DeviceConnectにはたくさんのプラグインがリリースされており、それを使うことでウェアラブルデバイスがJavaScriptから操作できるようになります。ぜひ試してみてください！

