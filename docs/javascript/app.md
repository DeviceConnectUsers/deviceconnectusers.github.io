# JavaScript SDKをより使いやすくする

JavaScript SDKはコールバック形式で実装されているので、今風とは言えません。そこでJavaScript SDKをラッピングして、PromiseベースでDevice Connectアプリを作る方法を紹介します。

## JavaScriptコードの基本形

JavaScript（app.js）の基本形は次のようになります。YOUR_APPLICATION_NAMEはそれぞれ読み替えてください。DeviceConnectクラスはこれから作成します。setupメソッドを叩いたら、[生死確認API](/webapi/availabillity/)、 [認可API](/webapi/grant)、 [認証API](/webapi/authorization)をコールします。

```
var dc = new DeviceConnect({
  applicationName: "YOUR_APPLICATION_NAME"
});
dc.setup()
  .then(function() {
    // 準備完了
  }, function(error) {
    // エラー
    alert(error.errorMessage)
  })
```

## DeviceConnectクラスの作成

DeviceConnectクラスの基本形は次のようになります。accessTokenとclientIdはWeb API経由で取得できるものですが、一度取得したら2回目以降は使い回したいのでlocalStorageに保存しておきます。

```
var DeviceConnect = (function(){
  var scopes = Array("battery", "serviceinformation",
                     "servicediscovery", "file", 
                     "mediastream_recording", "omnidirectional_image"
                     );
  var host = "http://localhost:4035";
  
  var DeviceConnect = function(args) {
    this.applicationName = args.applicationName;
    this.clientId = localStorage.getItem('clientId') || "";
    this.host = args.host || host;
    this.scopes = args.scopes || scopes;
    this.accessToken = localStorage.getItem('accessToken') || "";
    this.services = [];
  }
  var p = DeviceConnect.prototype;
  
  return DeviceConnect;
});
```

後はprototype（変数p）を拡張していきます。まず setupメソッドを作ります。

処理としてはPromiseを使っています。そして、check/grant/discoverの順番に処理を行っています。

```
p.setup = function() {
  var me = this;
  var p = new Promise(function(resolve, reject) {
    me.check()
    .then(function(res) {
      me.grant();
    }, function(res) {
      reject(res);
    })
    .then(function(res) {
      me.accessToken = res.accessToken;
      me.clientId = res.clientId;
      me.setLocalStorage();
      me.discover();
    }, function(res) {
      reject(res);
    })
    .then(function(services) {
      me.services = services;
      resolve(res);
    }, function(res) {
      reject(res);
    })
  });
  return p;
};
```

ではまずcheckメソッドです。全体をPromiseで囲んで `dConnect.checkDeviceConnect` を実行します。

```
p.check = function() {
  var p = new Promise(function(resolve, reject) {
    dConnect.checkDeviceConnect(
      function(apiVersion) {
        return resolve({apiVersion: apiVersion});
      }, function(errorCode, errorMessage) {
        return reject({errorCode: errorCode, errorMessage: errorMessage})
      });
  });
  return p;
}
```

grantメソッドも同様です。こちらはlocalStorageで値がとれた場合は処理を抜けます。

```
p.grant = function() {
  me = this;
  var p = new Promise(function(resolve, reject) {
    if (me.clientId && me.accessToken != "") {
      return resolve({clientId: me.clientId, accessToken: me.accessToken});
    }
    dConnect.authorization(me.scopes, me.applicationName,
      function(clientId, accessToken) {
        return resolve({clientId: clientId, accessToken: accessToken});
      },
      function(errorCode, errorMessage) {
        return reject({errorCode: errorCode, errorMessage: errorMessage})
      });
  });
  return p;
};
```

最後にdiscoverメソッドです。こちらは `dConnect.discoverDevices` を実行します。

```
p.discover = function() {
  me = this;
  var p = new Promise(function(resolve, reject) {
    dConnect.discoverDevices(me.accessToken,
      function(json) {
        return resolve(json.services);
      },
      function(errorCode, errorMessage) {
        return reject({errorCode: errorCode, errorMessage: errorMessage})
      });
  });
  return p;
};
```

Promiseでは返却値が一つしかできないため、返ってきたデータをオブジェクトとしています。最後にsetLocalStorageです。これはアクセストークンなどをlocalStorageに保存するだけです。

```
p.setLocalStorage = function() {
  localStorage.setItem('clientId', me.clientId);
  localStorage.setItem('accessToken', me.accessToken);
}
```

DeviceConnectクラスの全体像は次のようになります。

```
var DeviceConnect = (function(){
  var scopes = Array("battery","serviceinformation", "servicediscovery", "file", "mediastream_recording", "omnidirectional_image");
  var host = "http://localhost:4035";
  
  var DeviceConnect = function(args) {
    this.applicationName = args.applicationName;
    this.clientId = localStorage.getItem('clientId') || "";
    this.host = args.host || host;
    this.scopes = args.scopes || scopes;
    this.accessToken = localStorage.getItem('accessToken') || "";
    this.services = [];
  }
  
  var p = DeviceConnect.prototype;
  
  p.findService = function(name) {
    for (i in this.services) {
      if (this.services[i].id.toLowerCase().indexOf(name.toLowerCase()) == 0) {
        return this.services[i].id;
      }
    }
  }
  
  p.setLocalStorage = function() {
    localStorage.setItem('clientId', me.clientId);
    localStorage.setItem('accessToken', me.accessToken);
  }
  
  p.setup = function() {
    var me = this;
    var p = new Promise(function(resolve, reject) {
      me.check()
      .then(function(res) {
        return me.grant()
      }, function(res) {
        return reject(res);
      })
      .then(function(res) {
        me.accessToken = res.accessToken;
        me.clientId = res.clientId;
        me.setLocalStorage()
        return me.discover()
      }, function(res) {
        return reject(res);
      })
      .then(function(services) {
        me.services = services;
        return resolve(res);
      }, function(res) {
        return reject(res);
      })
    });
    return p;
  };
  
  p.discover = function() {
    me = this;
    var p = new Promise(function(resolve, reject) {
      dConnect.discoverDevices(me.accessToken,
        function(json) {
          return resolve(json.services);
        },
        function(errorCode, errorMessage) {
          return reject({errorCode: errorCode, errorMessage: errorMessage})
        });
    });
    return p;
  };
  
  p.grant = function() {
    me = this;
    var p = new Promise(function(resolve, reject) {
      if (me.clientId && me.accessToken != "") {
        return resolve({clientId: me.clientId, accessToken: me.accessToken});
      }
      dConnect.authorization(me.scopes, me.applicationName,
        function(clientId, accessToken) {
          return resolve({clientId: clientId, accessToken: accessToken});
        },
        function(errorCode, errorMessage) {
          return reject({errorCode: errorCode, errorMessage: errorMessage})
        });
    });
    return p;
  };
  
  p.check = function() {
    var p = new Promise(function(resolve, reject) {
      dConnect.checkDeviceConnect(
        function(apiVersion) {
          return resolve({apiVersion: apiVersion});
        }, function(errorCode, errorMessage) {
          return reject({errorCode: errorCode, errorMessage: errorMessage})
        });
    });
    return p;
  }
  return DeviceConnect;
})();
```

この基本形さえあれば、

```
var dc = new DeviceConnect({
  applicationName: "YOUR_APPLICATION_NAME"
});
dc.setup()
  .then(function() {
    // 準備完了
  }, function(error) {
    // エラー
    alert(error.errorMessage)
  })
```

のようにして開発が簡単にはじめられるようになります。後はservicesの中から使いたいデバイスを選択し、必要な処理を実装していくだけです。

