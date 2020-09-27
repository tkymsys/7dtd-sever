#!/bin/bash

# SteamCMDのインストール
# https://developer.valvesoftware.com/wiki/SteamCMD
cd "${STEAMCMD_DIR}"
wget -qO- 'https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz' | tar zxf -

# サーバーセットアップ
cd ${STEAMCMD_DIR}
./steamcmd.sh +login anonymous +force_install_dir "${SERVER_DIR}" +app_update 294420 +quit
