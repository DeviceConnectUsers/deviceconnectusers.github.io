# MOVERIOでDeviceConnectを利用する

MOVERIOとDeviceConnectを組み合わせた利用法を紹介します。MOVERIOにはAndroidが組み込まれていますので、DeviceConnect Managerを使って操作が可能です。

## こんなことができます

- MOVERIOからTHETAを操作して撮影、写真や動画の閲覧ができます。
- MOVERIOに接続しているスマートデバイスをWeb APIで操作できます

MOVERIOはBluetooth、WiFiを提供しているので、これらを使って各デバイスと接続ができます。

## 使ってみよう！

### セキュリティ設定の変更

MOVERIOにはGoogle Playが入っていません。そのため、まず設定のセキュリティにおいて「提供元不明のアプリ」をチェックする必要があります。

### Firefox for Androidのインストール

MOVERIOのデフォルトで入っているブラウザはWebSocketに対応していないため、そのままではデモのUI Appが動作しません。そこで野良のFirefox for Androidをインストールします。これは自己責任の上、インストールしてください。

[Firefox 48.0のAndroid - ダウンロード](http://firefox.jp.uptodown.com/android)

### DeviceConnect Managerのインストール

次にDeviceConnect Managerをインストールします。先ほどインストールしたFirefox for Androidを立ち上げて次のURLにアクセスします。

http://bit.ly/dc-mgr

サイトが表示されたらDownload APKをタップします。

![](/images/devices/moverio-7.png)

そしてリストが表示されたら

- DeviceConnectManager
- Android Host

をインストールします。

![](/images/devices/moverio-1.png)

インストール時には権限の確認が出ます。

![](/images/devices/moverio-18.png)

### DeviceConnectManagerの起動

インストールが終わったら、DeviceConnectManagerを開いてください。セキュリティ設定の中にある、外部IPを許可にチェックをし、さらにOriginブロック機能を無効にしてください。

![](/images/devices/moverio-21.png)

終わったらDeviceConnectManagerを立ち上げます。

![](/images/devices/moverio-20.png)

これで準備が完了です。

### DeviceConnectManagerを表示

再度Firefox for Androidを開いてLaunch UI-Appをタップします。

![](/images/devices/moverio-7.png)

以下のような画面が表示されるので、accessTokenをタップします。

![](/images/devices/moverio-9.png)

トークンを求める認証ダイアログが出ますので同意するをタップします。

![](/images/devices/moverio-8.png)

そうするとアクセストークンが取得できます。

![](/images/devices/moverio-11.png)

### MOVERIOのデータを取ってみる

今回はHostプラグインを使ってMOVERIOのデータを取得してみます。Search DeviceをタップするとHostというのが出ますのでタップします。

![](/images/devices/moverio-12.png)

そうするとMOVERIO上で取得できる各種機能が出ます。例えばこちらは加速度センサーの値。

![](/images/devices/moverio-3.png)

メディアファイルを取得したり、

![](/images/devices/moverio-5.png)

再生もできます。

![](/images/devices/moverio-4.png)

## MOVERIOからデバイスを操作する

このようにMOVERIO自体のデータを操作するのも良いですが、さらにプラグインを使って別なデバイスを操作することもできます。


