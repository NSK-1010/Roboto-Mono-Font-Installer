# Roboto-Mono-Font-Installer
Roboto Monoをインストールするためのスクリプトです。

### 依存環境
`bash`,`mv`,`wget`,`unzip`,`mkdir`,`rm`

### インストール方法

ターミナルでこちらのコマンドを入力してください。

sudo権限が必要です。

#### 通常インストール

```
git clone https://github.com/NSK-1010/Roboto-Mono-Font-Installer.git
cd Roboto-Mono-Font-Installer
sudo bash ./install.sh
```

#### debファイルを作成してインストール

Debian系またはUbuntu系のみで使用できます。

```
git clone https://github.com/NSK-1010/Roboto-Mono-Font-Installer.git
cd Roboto-Mono-Font-Installer
sudo bash ./install-deb.sh
```

#### debファイルを作成するのみ

```
git clone https://github.com/NSK-1010/Roboto-Mono-Font-Installer.git
cd Roboto-Mono-Font-Installer
sudo bash ./build-deb.sh
```

### 更新履歴について

[changelog.txt](./changelog.txt)に書いてあります。
