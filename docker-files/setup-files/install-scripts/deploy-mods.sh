#!/bin/bash


cd /home/${SERVER_UNAME}/setup-files
if [ -f Mods.zip ]; then
  unzip Mods.zip -d ${SERVER_PATH}
fi

