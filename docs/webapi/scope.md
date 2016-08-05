# スコープについて

DeviceConnectで指定できるスコープは以下の通りです。詳細は徐々に記入していきます。

|スコープ名|説明|APIドキュメント|
|--------|----|----|
|servicediscovery|利用できるデバイスを検索します|[サービス検索API](/webapi/servicediscovery/)|
|serviceinformation|サービスに関する情報を取得します|[サービス情報API](/webapi/serviceinformation/)|
|system|&nbsp;|&nbsp;|
|battery|バッテリー情報を取得します|&nbsp;|
|connect|&nbsp;|&nbsp;|
|deviceorientation|&nbsp;|&nbsp;|
|file_descriptor|新しいファイルを作成したり、内容の書き込み、読み込みを行います。|[ファイル参照API](/webapi/file_descriptor)|
|file|デバイス内のファイル一覧を取得したり、ファイル操作を行います。|[ファイルAPI](/webapi/file)|
|media_player|&nbsp;|&nbsp;|
|mediastream_recording|デバイスのカメラを使って録画、プレビューを行います。|[メディアストリーミング録画API](/webapi/mediastream_recording)|
|notification|デバイスに通知を送ります。|[通知API](/webapi/notification)|
|phone|&nbsp;|&nbsp;|
|proximity|&nbsp;|&nbsp;|
|settings|&nbsp;|&nbsp;|
|vibration|バイブレーションを実行します|[バイブレーションAPI](/webapi/vibration/)|
|light|LEDライトの明るさ、色を設定します|[ライトAPI](/webapi/light)|
|remote_controller|&nbsp;|&nbsp;|
|drive_controller|&nbsp;|&nbsp;|
|mhealth|&nbsp;|&nbsp;|
|sphero|&nbsp;|&nbsp;|
|dice|&nbsp;|&nbsp;|
|temperature|温度を測定します|[温度API](/webapi/temperature/)|
|camera|&nbsp;|&nbsp;|
|canvas|&nbsp;|&nbsp;|
|health|&nbsp;|&nbsp;|
|touch|&nbsp;|&nbsp;|
|humandetect|&nbsp;|&nbsp;|
|keyevent|&nbsp;|&nbsp;|
|omnidirectional_image|&nbsp;|&nbsp;|
|tv|&nbsp;|&nbsp;|
|powermeter|電力量を取得したり、電気利用のオンオフを設定します|[電力量 API](/webapi/powermeter/)|
|humidity|湿度を測定します|[湿度API](/webapi/humidity/)|
|illuminance|照度を測定します|[照度API](/webapi/illuminance/)|
|videochat|&nbsp;|&nbsp;|
|airconditioner|&nbsp;|&nbsp;|
|gpio|&nbsp;|&nbsp;|

## 筆者環境で試した限りのサポートしている機能一覧

以下の4つはいずれのデバイスでも提供されています。そのためリストからは省いています。

- authorization
- servicediscovery
- serviceinformation
- system

### Host

#### Galaxy S6

- [バッテリー](/webapi/battery)
- [バイブレーションAPI](/webapi/vibration/)
- [メディアストリーミング録画API](/webapi/mediastream_recording)
- [ファイル参照API](/webapi/file_descriptor)
- settings
- [Canvas](/webapi/canvas)
- phone
- keyevent
- connect
- [通知](/webapi/notification)
- touch
- file
- proximity
- deviceorientation
- media_player

### Pebble

#### 初代Pebble

- [バッテリー](/webapi/battery)
- [Canvas](/webapi/canvas)
- [バイブレーションAPI](/webapi/vibration/)
- [通知](/webapi/notification)
- settings
- keyevent
- deviceorientation

### LIFX Color 1000

- [ライトAPI](/webapi/light)

### F-PLUG

- [温度API](/webapi/temperature/)
- [ライトAPI](/webapi/light)
- settings
- [湿度API](/webapi/humidity/)
- [電力量 API](/webapi/powermeter/)
- [照度API](/webapi/illuminance/)

### Chromecast

- [Canvas](/webapi/canvas)
- [メディアプレイヤー](/webapi/media_player)
- [通知](/webapi/notification)

### THETA m15

- [バッテリー](/webapi/battery)
- [ファイル](/webapi/file)
- [メディアストリーミング録画API](/webapi/mediastream_recording)
- [全天球写真](/webapi/omnidirectional_image)
