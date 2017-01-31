# サービス情報 API

## 



### 基本情報

APIパス
: /gotapi/serviceinformation

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
|serviceId|✓|文字列|クエリー|
|accessToken|✓|文字列|クエリー|

### レスポンス

#### HTTPレスポンス

|HTTPステータスコード|内容|
|-----|-----|
|200||

エラーについては [エラーについて](./error.md) を参照してください。

#### レスポンス内容

|キー|||型|
|----|----|----|----|
|supportApis|||Object|
||path||Object|
|||swagger|文字列|
|supports|||配列|
|result|||数値|
|product|||文字列|
|version|||文字列|
|connect|||Object|
