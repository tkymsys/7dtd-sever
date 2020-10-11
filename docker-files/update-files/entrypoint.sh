#!/bin/bash

export BACKUP_PATH="/home/${SERVER_UNAME}/backup/`date '+%Y%m%d%H%M%S'`"
export SRC_CONFIG_PATH="/home/${SERVER_UNAME}/update-files/Config"
export DEST_CONFIG_PATH="/home/${SERVER_UNAME}/server/Data/Config"
export SRC_SERVERCONFIG_PATH="/home/${SERVER_UNAME}/update-files/serverconfig.xml"
export DEST_SERVERCONFIG_PATH="/home/${SERVER_UNAME}/server/serverconfig.xml"

cp -R /tmp/update-files "/home/${SERVER_UNAME}"

mkdir -p "${BACKUP_PATH}"

cp -f ${DEST_SERVERCONFIG_PATH} ${BACKUP_PATH}
cp -f ${SRC_SERVERCONFIG_PATH} ${DEST_SERVERCONFIG_PATH}

for targetFile in `ls ${SRC_CONFIG_PATH}`
do
  cp -f ${DEST_CONFIG_PATH}/${targetFile} ${BACKUP_PATH}
  cp -f ${SRC_CONFIG_PATH}/${targetFile} ${DEST_CONFIG_PATH}/${targetFile}
done


