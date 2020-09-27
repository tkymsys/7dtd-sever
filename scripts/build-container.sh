#/bin/bash

SCRIPT_DIR=$(cd $(dirname $0); pwd)
cd ${SCRIPT_DIR} > /dev/null

. ../docker-files/.env

cd ../docker-files > /dev/null
docker-compose up --no-start
cd - > /dev/null
