# 通知API


## テキストメッセージを送信する

POST http://192.168.0.20:4035/gotapi/notification/notify

multipart/form-data;

accessToken
filename
name="type"
name="icon"
serviceId

type
0 call
1 mail
2 SMS
3 Normal


