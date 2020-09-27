#!/bin/bash

# サーバーセットアップ
cd ${STEAMCMD_DIR}
./steamcmd.sh +login anonymous +force_install_dir "${SERVER_DIR}" +app_update 294420 +quit
