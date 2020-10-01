#!/bin/bash

cd "${STEAMCMD_PATH}"
wget -qO- 'https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz' | tar zxf -

# サーバーセットアップ
cd ${STEAMCMD_PATH}
./steamcmd.sh +login anonymous +force_install_dir "${SERVER_PATH}" +app_update 294420 +quit
