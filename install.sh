#/bin/bash

sh scripts/build-image.sh
sh scripts/build-container.sh

cd docker-files > /dev/null

docker-compose up 7dtd_setup

cd - > /dev/null
