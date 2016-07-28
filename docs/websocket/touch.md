# タッチAPI

```
{
    "attribute": "ontouch", 
    "profile": "touch", 
    "serviceId": "Hos...org", 
    "sessionKey": "99lzncdi", 
    "touch": {
        "touches": [
            {
                "id": 0, 
                "x": 820.1953125, 
                "y": 1953.75
            }
        ]
    }
}
```

複数の指でタッチした場合。

```
{
    "attribute": "ontouchstart", 
    "profile": "touch", 
    "serviceId": "Hos...org", 
    "sessionKey": "99lzncdi", 
    "touch": {
        "touches": [
            {
                "id": 0, 
                "x": 369.84375, 
                "y": 1608.75
            }, 
            {
                "id": 1, 
                "x": 240.8203125, 
                "y": 1185.625
            }, 
            {
                "id": 2, 
                "x": 1218.515625, 
                "y": 1916.25
            }, 
            {
                "id": 3, 
                "x": 1055.390625, 
                "y": 996.875
            }, 
            {
                "id": 4, 
                "x": 608.203125, 
                "y": 771.875
            }
        ]
    }
}
```

```
{
    "attribute": "ontouchend", 
    "profile": "touch", 
    "serviceId": "Host.e87e3213b730843a437ff6c676899df0.localhost.deviceconnect.org", 
    "sessionKey": "99lzncdi", 
    "touch": {
        "touches": [
            {
                "id": 1, 
                "x": 427.1484375, 
                "y": 2036.875
            }
        ]
    }
}
```

```
{
    "attribute": "ontouchmove", 
    "profile": "touch", 
    "serviceId": "Host.e87e3213b730843a437ff6c676899df0.localhost.deviceconnect.org", 
    "sessionKey": "99lzncdi", 
    "touch": {
        "touches": [
            {
                "id": 1, 
                "x": 950.44921875, 
                "y": 2096.25
            }
        ]
    }
}
```