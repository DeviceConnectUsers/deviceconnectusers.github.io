<h1>認証 API</h1>


<h2>アクセストークンを取得する</h2>


<p>DeviceConnect Managerからアクセストークンを取得します。</p>


<h3>基本情報</h3>


<p>APIパス</p>

<p>: /gotapi/authorization/accesstoken</p>


<p>HTTPメソッド</p>

<p>: GET</p>


<h3>リクエスト</h3>


<h4>HTTPヘッダー</h4>


|ヘッダーの種類|内容|
|----------------|----------------|
|Content-Type|application/json|

<h4>パラメータ</h4>


|キー|必須|型|場所|説明|
|-----|-----|-----|-----|-----|
|clientId|✓|文字列|クエリー|上記で取得したクライアントID|
|scope|✓|文字列|クエリー|利用する機能をカンマ区切りで指定。スコープ名は[スコープについて](./webapi/scope)を参照してください。|
|applicationName|✓|文字列|クエリー|アプリケーション名。任意の名前をつけます|

<h3>レスポンス</h3>


<h4>HTTPレスポンス</h4>


|HTTPステータスコード|内容|
|-----|-----|
|200|取得成功|

<p>エラーについては <a href="./error.md">エラーについて</a> を参照してください。</p>



<h4>レスポンス内容</h4>


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
