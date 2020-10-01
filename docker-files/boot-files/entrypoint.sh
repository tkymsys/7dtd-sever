#!/bin/bash

SERVER_PATH="/home/${SERVER_UNAME}/server"

cp -R /tmp/boot-files "/home/${SERVER_UNAME}"

cd "${SERVER_PATH}"
./startserver.sh -configfile=/home/${SERVER_UNAME}/setup-files/serverconfig.xml
