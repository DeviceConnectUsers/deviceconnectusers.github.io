# Web APIについて

DeviceConnectではWeb APIを使ってデバイスの操作ができます。以下はそのアクセス方法ですが、まず操作するまでに必要な手順を踏んでいく必要があります。

1. デバイスコネクトの状態チェック  
[生死確認API](/webapi/availabillity/)を使います。
1. DeviceConnectクライアントの作成  
[認可API](/webapi/grunt)を使います。
1. アクセストークンの取得  
[認証API](/webapi/authorization)を使います。
1. 利用できるサービスを取得  
[サービス検索 API](/webapi/servicediscovery)を使います。
1. デバイスがサポートしている機能の一覧を取得  
[サービス情報 API](/webapi/serviceinformation)を使います。

ここまでの手順を踏んだ後、各デバイス/各機能を指定してWeb APIを実行していきます。

## 機能を実行する

DeviceConnectを使って機能を実行します。各Web APIについては下記を参照して下さい。

- [認証API](/webapi/authorization)
- [生死確認API](/webapi/availabillity)
- [バッテリーAPI](/webapi/battery)
- [ファイル参照API](/webapi/file_descriptor)
- [ファイルAPI](/webapi/file)
- [認可API](/webapi/grant)
- [メディアストリーミング録画API](/webapi/mediastream_recording)
- [通知API](/webapi/notification)
- [サービス検索API](/webapi/servicediscovery)
- [サービス情報API](/webapi/serviceinformation)
- [バイブレーションAPI](/webapi/vibration)
