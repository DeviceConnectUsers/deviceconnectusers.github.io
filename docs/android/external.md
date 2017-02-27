# 外部から操作してみる

DeviceConnectはWeb APIなので、外部からコールすることもできます。ただしセキュリティの問題もあり、デフォルトでは弾いています。DeviceConnect Managerアプリを立ち上げて、外部IPを許可にチェックをします。

![](/images/android/external-access-1.png)

さらにOriginブロック機能が無効になっていることを確認してください。もしセキュアに使いたい場合は、Originブロック機能は有効にしつつ、Originホワイトリスト管理を使ってアクセス元ドメインを登録してください。例えば今回の例のように `http://deviceconnectusers.github.io/manager/` からアクセスする場合は `http://deviceconnectusers.github.io` を登録してください（最後はスラッシュなし）。

## アクセスする

ではデスクトップのブラウザ（ChromeやFirefoxなど）で同じようにローカルのindex.htmlを開きます。この時、index.htmlの後に **?ip=(DeviceConnectが立ち上がっているAndroidのIPアドレス)** を指定します。例えば `http://deviceconnectusers.github.io/manager/?ip=192.168.0.20` のようになります。表示したらAndroidと同じようにaccessTokenを取得します。

![](/images/android/deviceconnect-android-6.png)

デスクトップからバイブレーションを実行してみます。

<iframe width="420" height="315" src="https://www.youtube.com/embed/6vdS9k1AdAQ" frameborder="0" allowfullscreen></iframe>

他にも例えばバッテリーの情報が取れたり、

![](/images/android/deviceconnect-android-5.png)

バッテリーが充電状態かどうかの判定もできます。

![](/images/android/deviceconnect-android-4.png)

このままDeviceConnectのJavaScript SDKを使ってスマートデバイスを使ったアプリケーション開発が行えるでしょう。

## adbを使う

もう一つの方法として、実機をUSB接続した上でadbでポートフォワードを使う方法があります。Android SDKに含まれるadbコマンドを使います。9000、9001番は画像のストリーミング配信用です。

```
adb forward tcp:4035 tcp:4035
adb forward tcp:8080 tcp:8080
adb forward tcp:9000 tcp:9000
adb forward tcp:9001 tcp:9001
```

後は http://deviceconnectusers.github.io/manager/ にアクセスします。Originヘッダーのチェックを外すか、http://deviceconnectusers.github.io からのアクセスを許可してください。

