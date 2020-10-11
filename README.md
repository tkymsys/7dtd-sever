Docker環境上に"7 Days To Die"のサーバーを構築する。


# 初回セットアップ
- サーバーファイルインストール先ディレクトリを作成する。
- サーバーファイルインストール先ディレクトリのオーナーであるユーザーのユーザー名、ユーザーIDを控える。
- 本gitリポジトリを任意のディレクトリに`git clone`する。
- clone先に格納されている設定ファイル`docker-file/.env`を編集する。
  ```
  SERVER_UNAME=${サーバーファイルインストール先ディレクトリのオーナーであるユーザーのユーザー名}
  SERVER_UID=${サーバーファイルインストール先ディレクトリのオーナーであるユーザーのユーザーID}
  MOUNT_PATH=${サーバーファイルインストール先ディレクトリ}

  例：user：steam（1001）で /home/steam/7dtd にインストールする場合

  IMAGE_VERSION=1.0
  SERVER_UNAME=steam
  SERVER_UID=1001
  MOUNT_PATH=/home/steam/7dtd  
  ```
- サーバー設定ファイル `/home/docker/7dtd-sever/docker-files/setup-files/serverconfig.xml` の内容を必要に応じて変更する。例えば`ServerName`や`ServerPassword`など。
- `template-serverconfig.xml`にプレースホルダ形式で記載されている箇所を編集し、編集後ファイルを`serverconfig.xml`という名称で保存する。
- `serverconfig.xml`を`docker-files/update-files`に格納する。
- `sh install.sh`を実行し、サーバーをインストールする。
- `sh update.sh`を実行し、設定ファイルをオリジナルから変更する。

# 起動方法
- `sh attach.sh`を実行するとサーバーが起動する。サーバー起動後、コンソールにて`ctrl + c`でサーバーを停止できる

# 設定変更
- インストール先ディレクトリに存在する`setup-files`内の設定ファイルを変更し、`sh update.sh`を実行する。
  例えば`MOUNT_PATH`が`/home/steam/7dtd`であれば`/home/steam/7dtd/setup-files`内のファイルを変更する。
