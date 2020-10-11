#!/bin/bash

SERVER_PATH="/home/${SERVER_UNAME}/server"

cp -R /tmp/boot-files "/home/${SERVER_UNAME}"

cd "${SERVER_PATH}"
./startserver.sh -configfile=${SERVER_PATH}/serverconfig.xml
