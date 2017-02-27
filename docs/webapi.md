# Web APIについて

DeviceConnectではWeb APIを使ってデバイスの操作ができます。以下はそのアクセス方法ですが、まず操作するまでに必要な手順を踏んでいく必要があります。

1. デバイスコネクトの状態チェック  
[生死確認API](/webapi/availabillity/)を使います。
1. DeviceConnectクライアントの作成  
[認可API](/webapi/grant)を使います。
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
- [死活確認API](/webapi/availabillity)
- [バッテリーAPI](/webapi/battery)
- [コネクトAPI](/webapi/connect)
- [Canvas API](/webapi/canvas)
- [デバイス向き/加速度API](/webapi/deviceorientation)
- [ファイル参照API](/webapi/fileDescriptor)
- [ファイルAPI](/webapi/file)
- [認可API](/webapi/grant)
- [湿度API](/webapi/humidity)
- [照度 API](/webapi/illuminance)
- [キーイベントAPI](/webapi/keyevent)
- [ライトAPI](/webapi/light)
- [メディアプレイヤーAPI](/webapi/mediaPlayer)
- [メディアストリーミング録画API](/webapi/mediastreamRecording)
- [通知API](/webapi/notification)
- [電話API](/webapi/phone)
- [電力メーターAPI](/webapi/powermeter)
- [近接センサーAPI](/webapi/proximity)
- [リモートコントローラーAPI](/webapi/remoteController)
- [サービス検索API](/webapi/servicediscovery)
- [サービス情報API](/webapi/serviceinformation)
- [デバイス設定API](/webapi/settings)
- [温度 API](/webapi/temperature)
- [タッチAPI](/webapi/touch)
- [バイブレーションAPI](/webapi/vibration)
