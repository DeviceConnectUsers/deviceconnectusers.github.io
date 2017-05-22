# デバイス向き/加速度API

## デバイスの加速度を取得

デバイスの加速度を取得します。このWeb APIでは継続的ではありません。

### 基本情報

APIパス
: /gotapi/deviceorientation/ondeviceorientation

HTTPメソッド
: GET

### リクエスト

#### HTTPヘッダー

|ヘッダーの種類|内容|
|----------------|----------------|
|Content-Type|application/json|

#### パラメータ

|キー|必須|型|場所|説明|
|-----|-----|-----|-----|-----|
|serviceId|✓|文字列|クエリー|サービスIDを指定します|
|accessToken|✓|文字列|クエリー|取得したアクセストークン|

### レスポンス

#### HTTPレスポンス

|HTTPステータスコード|内容|
|-----|-----|
|200|HTTP経由でアクセスするファイル情報|

エラーについては [エラーについて](./error.md) を参照してください。

#### レスポンス内容

|キー|||型|
|----|----|----|----|
|orientation|||Object|
||acceleration||Object|
|||x|数値|
|||y|数値|
|||z|数値|
||interval||数値|
||rotationRate||Object|
|||beta|数値|
|||alpha|数値|
|||gamma|数値|
||accelerationIncludingGravity||Object|
|||x|数値|
|||y|数値|
|||z|数値|
|result|||数値|
|product|||文字列|
|version|||文字列|

## 加速度を継続的に受け取るイベントを設定

加速度を継続的に受け取るイベントを設定します。実際のデータはWebSocket経由なので、[デバイス向き/加速度API（WebSocket）](/websocket/deviceorientation)を参照してください。

### 基本情報

APIパス
: /gotapi/deviceorientation/ondeviceorientation

HTTPメソッド
: PUT

### リクエスト

#### HTTPヘッダー

|ヘッダーの種類|内容|
|----------------|----------------|
|Content-Type|application/json|

#### パラメータ

|キー|必須|型|場所|説明|
|-----|-----|-----|-----|-----|
|serviceId|✓|文字列|クエリー|サービスIDを指定します|
|accessToken|✓|文字列|クエリー|取得したアクセストークン|
|sessionKey|✓|文字列|クエリー|WebSocketで受け取るための一意のキー|

### レスポンス

#### HTTPレスポンス

|HTTPステータスコード|内容|
|-----|-----|
|200|HTTP経由でアクセスするファイル情報|

エラーについては [エラーについて](./error.md) を参照してください。

#### レスポンス内容

|キー|型|
|----|----|
|result|数値|
|product|文字列|
|value|文字列|
|version|文字列|

## 加速度を受け取るイベントを停止

WebSocket経由で継続的に受け取っていた加速度のイベントを停止します。

### 基本情報

APIパス
: /gotapi/deviceorientation/ondeviceorientation

HTTPメソッド
: DELETE

### リクエスト

#### HTTPヘッダー

|ヘッダーの種類|内容|
|----------------|----------------|
|Content-Type|application/json|

#### パラメータ

|キー|必須|型|場所|説明|
|-----|-----|-----|-----|-----|
|serviceId|✓|文字列|クエリー|サービスIDを指定します|
|accessToken|✓|文字列|クエリー|取得したアクセストークン|
|sessionKey|✓|文字列|クエリー|WebSocketで受け取るための一意のキー|

### レスポンス

#### HTTPレスポンス

|HTTPステータスコード|内容|
|-----|-----|
|200|HTTP経由でアクセスするファイル情報|

エラーについては [エラーについて](./error.md) を参照してください。

#### レスポンス内容

|キー|型|
|----|----|
|result|数値|
|product|文字列|
|value|文字列|
|version|文字列|
