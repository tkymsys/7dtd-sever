#/bin/bash

SCRIPT_DIR=$(cd $(dirname $0); pwd)
cd ${SCRIPT_DIR} > /dev/null

. ./docker-files/.env

docker start 7dtd_boot
docker exec -it 7dtd_boot "/tmp/boot-files/entrypoint.sh"
docker stop 7dtd_boot

