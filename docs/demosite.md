# デモサイトの使い方

デモサイトはDeviceConnectのWeb APIを試せるKitchen Sinkになっています。実際には静的なHTMLです。

導入方法は2つあります。

## ダウンロード

[こちらのデモファイル](https://github.com/DeviceConnectUsers/deviceconnectusers.github.io/releases/tag/v2.2.4-release-20170623-demo) をダウンロードして、解凍した内容をAndroidの内部ストレージにコピーします。

後はAndroidのChromeアプリでindex.htmlを開けばOKです。

## Webからアクセス

[こちらに](http://deviceconnectusers.github.io/manager/)同じものをアップロードしてあります。Androidのブラウザで  [http://deviceconnectusers.github.io/manager/](http://deviceconnectusers.github.io/manager/)を開いてください。

## 使い方

### トップページ

トップページにアクセスしたら、まずは Launch UI-App をタップします。

![](/images/demosite-2.png)

そうすると下のような画面が表示されるので、accessTokenボタンをタップします。

![](/images/demosite-3.png)

アクセスを許可するためのダイアログが出ますので、ACCEPTをタップしてください。

![](/images/demosite-1.png)

そうするとアクセストークンが表示されます。これで準備完了です。

![](/images/demosite-4.png)

### デバイスリストの取得

次に操作するデバイスを検索します。Search Devicesをタップします。そうすると下にあるリストが更新され、利用できるデバイスが一覧されます。

![](/images/demosite-5.png)

その中のデバイスをタップすると、利用できる機能が一覧されます。

![](/images/demosite-6.png)

例えばこれは[バイブレーションAPI](/webapi/vibration)を実行しようとしているところです。

![](/images/demosite-7.png)

----

このようにデモサイトを使えばDeviceConnectでできる機能が一通り試せるようになっています。JavaScript SDKも組み込まれていますので、その実装方法の参考にもなりそうです。








