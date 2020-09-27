#!/bin/bash

SERVER_DIR="/home/${SERVER_UNAME}/server"

cp -R /tmp/boot-files "/home/${SERVER_UNAME}"

cd "${SERVER_DIR}"
./startserver.sh -configfile=/home/${SERVER_UNAME}/setup-files/serverconfig.xml
