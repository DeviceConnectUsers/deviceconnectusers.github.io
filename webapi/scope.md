# スコープについて

DeviceConnectで指定できるスコープは以下の通りです。詳細は徐々に記入していきます。

|スコープ名|説明|APIドキュメント|
|--------|----|----|
|servicediscovery|&nbsp;|
|serviceinformation|&nbsp;|
|system|&nbsp;|&nbsp;|
|battery|バッテリー情報を取得します|&nbsp;|
|connect|&nbsp;|&nbsp;|
|deviceorientation|&nbsp;|&nbsp;|
|file_descriptor|&nbsp;|&nbsp;|
|file|&nbsp;|&nbsp;|
|media_player|&nbsp;|&nbsp;|
|mediastream_recording|&nbsp;|&nbsp;|
|notification|&nbsp;|&nbsp;|
|phone|&nbsp;|&nbsp;|
|proximity|&nbsp;|&nbsp;|
|settings|&nbsp;|&nbsp;|
|vibration|バイブレーションを実行します|[バイブレーションAPI](./vibration/)|
|light|&nbsp;|&nbsp;|
|remote_controller|&nbsp;|&nbsp;|
|drive_controller|&nbsp;|&nbsp;|
|mhealth|&nbsp;|&nbsp;|
|sphero|&nbsp;|&nbsp;|
|dice|&nbsp;|&nbsp;|
|temperature|&nbsp;|&nbsp;|
|camera|&nbsp;|&nbsp;|
|canvas|&nbsp;|&nbsp;|
|health|&nbsp;|&nbsp;|
|touch|&nbsp;|&nbsp;|
|humandetect|&nbsp;|&nbsp;|
|keyevent|&nbsp;|&nbsp;|
|omnidirectional_image|&nbsp;|&nbsp;|
|tv|&nbsp;|&nbsp;|
|powermeter|&nbsp;|&nbsp;|
|humidity|&nbsp;|&nbsp;|
|illuminance|&nbsp;|&nbsp;|
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

