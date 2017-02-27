デバイスがどの機能をサポートしているのか細かく調べるのに使うWeb APIです。デバイス情報を取得するところまでは[DeviceConnectアプリケーションの作り方](/javascript/basic/)を参照してください。 `app.services` にデバイス情報が入っていることとします。

## 機能だけを知りたい場合

単にサポートされている機能名だけを知りたい場合は[サービス検索API](/webapi/servicediscovery/)を利用することもできます。この場合、レスポンスの中のservicesにサポートされている機能が配列になって返ってきます。

## より詳細に機能を調べる場合

サービス検索APIの場合、さらに細かくし情報が取得できます。例えば次のようなレスポンスが返ってきます。

```
{
    "connect": {}, 
    "product": "Device Connect Manager", 
    "result": 0, 
    "supportApis": {
        "battery": {
            "consumes": [], 
            "info": {
                "description": "", 
                "title": "Battery Profile", 
                "version": "2.0.0"
            }, 
            "paths": {
                "/": {
                    "get": {
                        "description": "", 
                        "parameters": [
                            {
                                "in": "query", 
                                "name": "serviceId", 
                                "required": true, 
                                "type": "string"
                            }
                        ], 
                        "responses": {
                            "200": {
                                "description": ""
                            }
                        }, 
                        "summary": "", 
                        "x-type": "one-shot"
                    }
                }, 
                "/charging": {
                  :
                }, 
                "/level": {
                  :
                }, 
            }, 
            "swagger": "2.0"
        }, 
        "canvas": {
          :
        }, 
        :
    }, 
    "supports": [
        "vibration", 
          :
        "battery"
    ], 
    "version": "2.0.0"
}
```

supportApisの中に各機能が入っており、記法はSwagger 2.0に準拠した書き方になっていますので、このままシステムに組み込んだり、ドキュメント化することもできそうです。

[サービス情報APIのデモ](/javascript/examples/serviceinformation/)では各APIのSwaggerをJSONで取り出せるようになっています。この内容を[Swagger Editor](http://editor.swagger.io/#/)に貼り付ければ、ドキュメントがHTMLで確認できます。

![](/images/swagger.png)