## ファイル

### ファイル一覧

curl 'http://localhost:4035/gotapi/file/list?serviceId=theta.30c0c7fe69d9c8ad15cd7ef1ae1394.localhost.deviceconnect.org&accessToken=35c8d52e53d9bcb8dc0f1036532977e610e272107a81afc6e1c0bf88aac5507eaf717e91ac849c1c&path=%2F' -H 'Pragma: no-cache' -H 'Origin: http://deviceconnectusers.github.io' -H 'Accept-Encoding: gzip, deflate, sdch' -H 'Accept-Language: en-US,en;q=0.8,ja;q=0.6' -H 'User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36' -H 'Accept: */*' -H 'Referer: http://deviceconnectusers.github.io/manager/' -H 'Connection: keep-alive' -H 'Cache-Control: no-cache' --compressed
{"result":0,"product":"Device Connect Manager","files":[{"mimeType":"video\/mpeg","fileName":"R0010108.MOV","updateDate":"2016\/07\/27 10:37:25","path":"\/R0010108.MOV"},{"mimeType":"video\/mpeg","fileName":"R0010107.MOV","updateDate":"2016\/07\/27 10:35:35","path":"\/R0010107.MOV"},{"mimeType":"video\/mpeg","fileName":"R0010106.MOV","updateDate":"2016\/07\/27 10:35:18","path":"\/R0010106.MOV"},{"mimeType":"image\/jpeg","fileName":"R0010105.JPG","updateDate":"2016\/07\/27 10:21:30","path":"\/R0010105.JPG"}],"version":"2.0.0"}

### ファイル削除

curl 'http://localhost:4035/gotapi/file/remove?serviceId=theta.30c0c7fe69d9c8ad15cd7ef1ae1394.localhost.deviceconnect.org&accessToken=35c8d52e53d9bcb8dc0f1036532977e610e272107a81afc6e1c0bf88aac5507eaf717e91ac849c1c&path=%2FR0010108.MOV' -X DELETE -H 'Pragma: no-cache' -H 'Origin: http://deviceconnectusers.github.io' -H 'Accept-Encoding: gzip, deflate, sdch' -H 'Accept-Language: en-US,en;q=0.8,ja;q=0.6' -H 'User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36' -H 'Content-Type: text/plain;charset=UTF-8' -H 'Accept: */*' -H 'Cache-Control: no-cache' -H 'Referer: http://deviceconnectusers.github.io/manager/' -H 'Connection: keep-alive' -H 'Content-Length: 0' --compressed
{"result":0,"product":"Device Connect Manager","version":"2.0.0"}

### ファイル表示

curl 'http://localhost:4035/gotapi/file/receive?serviceId=theta.30c0c7fe69d9c8ad15cd7ef1ae1394.localhost.deviceconnect.org&accessToken=35c8d52e53d9bcb8dc0f1036532977e610e272107a81afc6e1c0bf88aac5507eaf717e91ac849c1c&path=%2FR0010032.JPG' -H 'Pragma: no-cache' -H 'Origin: http://deviceconnectusers.github.io' -H 'Accept-Encoding: gzip, deflate, sdch' -H 'Accept-Language: en-US,en;q=0.8,ja;q=0.6' -H 'User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36' -H 'Accept: */*' -H 'Referer: http://deviceconnectusers.github.io/manager/' -H 'Connection: keep-alive' -H 'Cache-Control: no-cache' --compressed
{"mimeType":"image\/jpeg","result":0,"product":"Device Connect Manager","uri":"http:\/\/localhost:4035\/gotapi\/files?uri=content:\/\/org.deviceconnect.android.deviceplugin.theta.provider\/R0010032.JPG","version":"2.0.0"}

### ファイルコンテンツ

curl 'http://localhost:4035/gotapi/files?uri=content://org.deviceconnect.android.deviceplugin.theta.provider/R0010032.JPG' -H 'Pragma: no-cache' -H 'Origin: http://deviceconnectusers.github.io' -H 'Accept-Encoding: gzip, deflate, sdch' -H 'Accept-Language: en-US,en;q=0.8,ja;q=0.6' -H 'User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36' -H 'Accept: image/webp,image/*,*/*;q=0.8' -H 'Referer: http://deviceconnectusers.github.io/manager/' -H 'Connection: keep-alive' -H 'Cache-Control: no-cache' --compressed
バイナリ画像が返ってくる

curl 'http://localhost:4035/gotapi/files?uri=content://org.deviceconnect.android.deviceplugin.theta.provider/R0010028.MP4' -H 'Pragma: no-cache' -H 'Origin: http://deviceconnectusers.github.io' -H 'Accept-Encoding: gzip, deflate, sdch' -H 'Accept-Language: en-US,en;q=0.8,ja;q=0.6' -H 'User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36' -H 'Accept: image/webp,image/*,*/*;q=0.8' -H 'Referer: http://deviceconnectusers.github.io/manager/' -H 'Connection: keep-alive' -H 'Cache-Control: no-cache' --compressed

動画が返ってくる。

## 写真撮影

### 

curl 'http://localhost:4035/gotapi/mediastream_recording/onphoto?serviceId=theta.30c0c7fe69d9c8ad15cd7ef1ae1394.localhost.deviceconnect.org&accessToken=35c8d52e53d9bcb8dc0f1036532977e610e272107a81afc6e1c0bf88aac5507eaf717e91ac849c1c&sessionKey=5b337a17-1a89-427d-9d6f-fcac3c5a0997' -X PUT -H 'Pragma: no-cache' -H 'Origin: http://deviceconnectusers.github.io' -H 'Accept-Encoding: gzip, deflate, sdch' -H 'Accept-Language: en-US,en;q=0.8,ja;q=0.6' -H 'User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36' -H 'Accept: */*' -H 'Cache-Control: no-cache' -H 'Referer: http://deviceconnectusers.github.io/manager/' -H 'Connection: keep-alive' -H 'Content-Length: 0' --compressed
{"result":0,"product":"Device Connect Manager","version":"2.0.0"}

### プレビュー

curl 'http://localhost:4035/gotapi/mediastream_recording/preview?serviceId=theta.30c0c7fe69d9c8ad15cd7ef1ae1394.localhost.deviceconnect.org&accessToken=35c8d52e53d9bcb8dc0f1036532977e610e272107a81afc6e1c0bf88aac5507eaf717e91ac849c1c&target=0' -X PUT -H 'Pragma: no-cache' -H 'Origin: http://deviceconnectusers.github.io' -H 'Accept-Encoding: gzip, deflate, sdch' -H 'Accept-Language: en-US,en;q=0.8,ja;q=0.6' -H 'User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36' -H 'Accept: */*' -H 'Cache-Control: no-cache' -H 'Referer: http://deviceconnectusers.github.io/manager/' -H 'Connection: keep-alive' -H 'Content-Length: 0' --compressed
{"result":0,"product":"Device Connect Manager","uri":"http:\/\/localhost:9000\/1","version":"2.0.0"}

multipart/x-mixed-replaceのURLが返ってくる。


