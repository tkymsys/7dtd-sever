#!/bin/bash

export STEAMCMD_PATH="/home/${SERVER_UNAME}/steamcmd"
export SERVER_PATH="/home/${SERVER_UNAME}/server"
export INSTALL_SCRIPTS_PATH="/home/${SERVER_UNAME}/setup-files/install-scripts"
export WORK_PATH="/home/${SERVER_UNAME}/work"

mkdir "${STEAMCMD_PATH}"
mkdir "${SERVER_PATH}"
mkdir "${WORK_PATH}"

cp -R /tmp/setup-files "/home/${SERVER_UNAME}"

for script in `cat /home/${SERVER_UNAME}/setup-files/install-script.list`
do
  echo "${script} start."
  ${INSTALL_SCRIPTS_PATH}/${script}
  echo "${script} finish."
done
