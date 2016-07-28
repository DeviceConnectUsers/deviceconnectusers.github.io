<h1>Deviceorientation API</h1>


<h2>デバイスの加速度を取得</h2>


<p>デバイスの加速度を取得します。このWeb APIでは継続的ではありません。</p>


<h3>基本情報</h3>


<p>APIパス</p>

<p>: /gotapi/deviceorientation/ondeviceorientation</p>


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
|serviceId|✓|文字列|クエリー|サービスIDを指定します|
|accessToken|✓|文字列|クエリー|取得したアクセストークン|

<h3>レスポンス</h3>


<h4>HTTPレスポンス</h4>


|HTTPステータスコード|内容|
|-----|-----|
|200|HTTP経由でアクセスするファイル情報|

<p>エラーについては <a href="./error.md">エラーについて</a> を参照してください。</p>



<h4>レスポンス内容</h4>


|キー|型|
|-----|-----|
|Object|
|result|数値|
|product|文字列|
|version|文字列|

<h2>加速度を継続的に受け取るイベントを設定</h2>


<p>加速度を継続的に受け取るイベントを設定します。実際のデータはWebSocket経由なので、<a href="/websocket/deviceorientation">デバイス向き/加速度API（WebSocket）</a>を参照してください。</p>


<h3>基本情報</h3>


<p>APIパス</p>

<p>: /gotapi/deviceorientation/ondeviceorientation</p>


<p>HTTPメソッド</p>

<p>: PUT</p>


<h3>リクエスト</h3>


<h4>HTTPヘッダー</h4>


|ヘッダーの種類|内容|
|----------------|----------------|
|Content-Type|application/json|

<h4>パラメータ</h4>


|キー|必須|型|場所|説明|
|-----|-----|-----|-----|-----|
|serviceId|✓|文字列|クエリー|サービスIDを指定します|
|accessToken|✓|文字列|クエリー|取得したアクセストークン|
|sessionKey|✓|文字列|クエリー|WebSocketで受け取るための一意のキー|

<h3>レスポンス</h3>


<h4>HTTPレスポンス</h4>


|HTTPステータスコード|内容|
|-----|-----|
|200|HTTP経由でアクセスするファイル情報|

<p>エラーについては <a href="./error.md">エラーについて</a> を参照してください。</p>



<h4>レスポンス内容</h4>


|キー|型|
|-----|-----|
|result|数値|
|product|文字列|
|文字列|
|version|文字列|

<h2>加速度を受け取るイベントを停止</h2>


<p>WebSocket経由で継続的に受け取っていた加速度のイベントを停止します。</p>


<h3>基本情報</h3>


<p>APIパス</p>

<p>: /gotapi/deviceorientation/ondeviceorientation</p>


<p>HTTPメソッド</p>

<p>: DELETE</p>


<h3>リクエスト</h3>


<h4>HTTPヘッダー</h4>


|ヘッダーの種類|内容|
|----------------|----------------|
|Content-Type|application/json|

<h4>パラメータ</h4>


|キー|必須|型|場所|説明|
|-----|-----|-----|-----|-----|
|serviceId|✓|文字列|クエリー|サービスIDを指定します|
|accessToken|✓|文字列|クエリー|取得したアクセストークン|
|sessionKey|✓|文字列|クエリー|WebSocketで受け取るための一意のキー|

<h3>レスポンス</h3>


<h4>HTTPレスポンス</h4>


|HTTPステータスコード|内容|
|-----|-----|
|200|HTTP経由でアクセスするファイル情報|

<p>エラーについては <a href="./error.md">エラーについて</a> を参照してください。</p>



<h4>レスポンス内容</h4>


|キー|型|
|-----|-----|
|result|数値|
|product|文字列|
|value|文字列|
|version|文字列|
