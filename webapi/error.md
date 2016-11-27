# エラーについて

DeviceConnect ManagerのAPIを実行した際に返ってくるエラーは次の通りです。

|コード|タイトル|説明|
|-----|------|-----|
|-1|ACCESS_FAILED|Device Connectへのアクセスに失敗した|
|-2|INVALID_SERVER|不正なサーバからのレスポンスを受信した|
|1|UNKNOWN|原因不明のエラー|
|2|NOT_SUPPORT_PROFILE|サポートされていないプロファイルにアクセスされた|
|3|NOT_SUPPORT_ACTION|サポートされていないアクションが指定された|
|4|NOT_SUPPORT_ATTRIBUTE|サポートされていない属性・インターフェースが指定された|
|5|EMPTY_SERVICE_ID|serviceIdが設定されていない|
|6|NOT_FOUND_SERVICE|サービスが発見できなかった|
|7|TIMEOUT|タイムアウトが発生した|
|8|UNKNOWN_ATTRIBUTE|未知の属性・インターフェースにアクセスされた|
|9|LOW_BATTERY|バッテリー低下で操作不能|
|10|INVALID_REQUEST_PARAMETER|不正なパラメータを受信した|
|11|AUTHORIZATION|認証エラー|
|12|EXPIRED_ACCESS_TOKEN|アクセストークンの有効期限切れ|
|13|EMPTY_ACCESS_TOKEN|アクセストークンが設定されていない|
|14|SCOPE|スコープ外にアクセス要求がなされた|
|15|NOT_FOUND_CLIENT_ID|認証時にclientIdが発見できなかった|
|16|ILLEGAL_DEVICE_STATE|デバイスの状態異常エラー|
|17|ILLEGAL_SERVER_STATE|サーバの状態異常エラー|
|18|INVALID_ORIGIN|不正オリジンエラー|

