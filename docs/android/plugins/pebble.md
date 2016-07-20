# Pebble

## 必要なもの

- **Pebble**  
現在は初代のPebbleが良いようです。iOSではPebble Timeも若干動きましたが、AndroidではURLスキーマが異なるためか動きませんでした。
- **DeviceConnect Manager**  
ビルドしてインストール、または[Google Playからダウンロード](https://play.google.com/store/apps/details?id=org.deviceconnect.android.manager&hl=ja)します。
- **Pebble (Device Connect Dice Plug-in)**  
ビルドしてインストールします。[プラグインをビルドする](http://localhost:8000/android/plugin/)を参考に、



## 参考情報

### 専用Pebbleアプリのビルド

### SDKのダウンロード

[SDK // Pebble Developers](https://developer.pebble.com/sdk/)からダウンロードもできますが、Mac OSXであればHomebrewを使ってインストールできます。

```
$ brew install pebble/pebble-sdk/pebble-sdk
```

[Windows用](https://developer.pebble.com/sdk/install/windows/)、 [Linux用](https://developer.pebble.com/sdk/install/linux/) のインストールはそれぞれ参照してください。

### アプリのビルド

まずリポジトリをクローンします。

```
$ git clone https://github.com/DeviceConnect/DeviceConnect-Common.git
```

ディレクトリを移動してビルドします。

```
$ cd DeviceConnect-Common/dConnectDevicePebbleApp
$ pebble build
```

最初にSDKをダウンロードします。

```
  :
-------------------------------------------------------
APLITE APP MEMORY USAGE
Total size of resources:        4092 bytes / 128KB
Total footprint in RAM:         9127 bytes / 24KB
Free RAM available (heap):      15449 bytes
------------------------------------------------------- 
[58/58] aplite | dConnectDevicePebbleApp.pbw: build/basalt/pebble-app.bin build/basalt/app_resources.pbpack build/aplite/pebble-app.bin build/aplite/app_resources.pbpack -> build/dConnectDevicePebbleApp.pbw
Waf: Leaving directory `/Volumes/SD/Dropbox/DevRel/NTTDocomo/DeviceConnect-Common/dConnectDevicePebbleApp/build'
'build' finished successfully (0.474s)
```

と出ればビルド成功です。 `build` ディレクトリに `dConnectDevicePebbleApp.pbw` ができあがっているはずです。


できあがったファイルをDeviceConnect-AndroidのPebbleプラグインの中にコピーします。

```
$ cp build/dConnectDevicePebbleApp.pbw ../../DeviceConnect-Android/dConnectDevicePlugin/dConnectDevicePebble/app/src/main/res/raw/dc_pebble.pbw 
```
