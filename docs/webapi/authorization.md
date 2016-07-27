# 認証 API

## アクセストークンを取得する

### 基本情報

APIパス
: /gotapi/authorization/accesstoken

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
|clientId|✓|文字列|クエリー|上記で取得したクライアントID|
|scope|✓|文字列|クエリー|利用する機能をカンマ区切りで指定。スコープ名は[スコープについて](./webapi/scope)を参照してください。|
|applicationName|✓|文字列|クエリー|アプリケーション名。任意の名前をつけます|

### レスポンス

#### HTTPレスポンス

|HTTPステータスコード|内容|
|-----|-----|
|200|取得成功|

エラーについては [エラーについて](./error.md) を参照してください。


#### レスポンス内容

|キー||型|
|-----|-----|-----|
|accessToken||文字列|
|scopes||配列|
||scope|文字列|
||expirePeriod|数値|
|result||数値|
|product||文字列|
|version||文字列|
|errorCode||数値|
|errorMessage||文字列|
