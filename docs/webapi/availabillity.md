# Availabillity API

## DeviceConnectが使えるかどうかをチェック

### 基本情報

APIパス
: /availabillity

HTTPメソッド
: GET

### リクエスト

#### HTTPヘッダー

|ヘッダーの種類|内容|
|----------------|----------------|
|Content-Type|application/json|

### レスポンス

#### HTTPレスポンス

|HTTPステータスコード|内容|
|-----|-----|
|200|利用可能|

エラーについては [エラーについて](./error.md) を参照してください。


#### レスポンス内容

|キー|型|
|-----|-----|
|result|数値|
|product|文字列|
|version|文字列|
|errorCode|数値|
|errorMessage|文字列|
