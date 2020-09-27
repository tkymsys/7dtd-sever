#!/bin/bash

export STEAMCMD_DIR="/home/${SERVER_UNAME}/steamcmd"
export SERVER_DIR="/home/${SERVER_UNAME}/server"
export INSTALL_SCRIPTS_DIR="/home/${SERVER_UNAME}/setup-files/install-scripts"
export WORK_DIR="/home/${SERVER_UNAME}/work"

mkdir "${STEAMCMD_DIR}"
mkdir "${SERVER_DIR}"
mkdir "${WORK_DIR}"

cp -R /tmp/setup-files "/home/${SERVER_UNAME}"

for script in `cat /home/${SERVER_UNAME}/setup-files/install-script.list`
do
  echo "${script} start."
  ${INSTALL_SCRIPTS_DIR}/${script}
  echo "${script} finish."
done
