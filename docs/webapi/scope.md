# スコープについて

DeviceConnectで指定できるスコープは以下の通りです。詳細は徐々に記入していきます。

|スコープ名|説明|APIドキュメント|
|--------|----|----|
|servicediscovery|利用できるサービス（機能）を検索します|[サービス検索API](/webapi/servicediscovery/)|
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
|vibration|バイブレーションを実行します|[バイブレーションAPI](./vibration/)|
|light|LEDライトの明るさ、色を設定します|[ライトAPI](./light)|
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

### Host

#### Galaxy S6

- vibration
- mediastream_recording
- file_descriptor
- settings
- canvas
- phone
- system
- serviceinformation
- keyevent
- connect
- authorization
- notification
- touch
- servicediscovery
- file
- proximity
- deviceorientation
- media_player
- battery

### Pebble

#### 初代Pebble

- vibration
- notification
- servicediscovery
- settings
- canvas
- system
- serviceinformation
- keyevent
- deviceorientation
- authorization
- battery


### LIFX Color 1000

- system
- serviceinformation
- light
- authorization
- servicediscovery

### F-PLUG

- temperature
- light
- servicediscovery
- settings
- system
- humidity
- powermeter
- serviceinformation
- illuminance
- authorization

### Chromecast

- canvas
- system
- serviceinformation
- notification
- authorization
- media_player
- servicediscovery

### THETA m15

- mediastream_recording
- servicediscovery
- file
- system
- serviceinformation
- omnidirectional_image
- authorization
- battery

