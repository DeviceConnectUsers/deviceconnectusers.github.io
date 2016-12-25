<h1>サービス情報 API</h1>






<h3>基本情報</h3>


<p>APIパス</p>

<p>: /gotapi/serviceinformation</p>


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
|serviceId|✓|文字列|クエリー|
|accessToken|✓|文字列|クエリー|

<h3>レスポンス</h3>


<h4>HTTPレスポンス</h4>


|HTTPステータスコード|内容|
|-----|-----|
<p>|200||</p>


<p>エラーについては <a href="./error.md">エラーについて</a> を参照してください。</p>



<h4>レスポンス内容</h4>


|キー||型|
|-----|-----|-----|
||Object|
|supports||配列|
|result||数値|
|product||文字列|
|version||文字列|
|connect||Object|
