<h1>認可 API</h1>


<h2>接続するためのクライアントを作成する</h2>


<p>DeviceConnect Managerに接続するためのクライアントを作成します。</p>


<h3>基本情報</h3>


<p>APIパス</p>

<p>: /authorization/grant</p>


<p>HTTPメソッド</p>

<p>: GET</p>


<h3>リクエスト</h3>


<h4>HTTPヘッダー</h4>


|ヘッダーの種類|内容|
|----------------|----------------|
|Content-Type|application/json|

<h3>レスポンス</h3>


<h4>HTTPレスポンス</h4>


|HTTPステータスコード|内容|
|-----|-----|
|200|クライアント作成完了|

<p>エラーについては <a href="./error.md">エラーについて</a> を参照してください。</p>



<h4>レスポンス内容</h4>


|キー|型|
|-----|-----|
|clientId|文字列|
|result|数値|
|product|文字列|
|version|文字列|
|errorCode|数値|
|errorMessage|文字列|
