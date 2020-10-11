#/bin/bash

function printBuildArg () {
  for line in `cat ${1}`
  do
    key=`echo ${line} | awk -F"=" '{print $1}'`
    value=`echo ${line} | awk -F"=" '{print $2}'`
    echo -n " --build-arg ${key}=${value}"
  done
}


SCRIPT_DIR=$(cd $(dirname $0); pwd)
cd ${SCRIPT_DIR} > /dev/null

# 設定ファイルの読み込み
. ../docker-files/.env

# 設定ファイルの内容をbuild-argオプション形式に変換する
buildArg=`printBuildArg "${SCRIPT_DIR}/../docker-files/.env"`

# イメージの構築
cd ../docker-files > /dev/null
docker build -t 7dtd-base:${IMAGE_VERSION}  ${buildArg} -f Dockerfile-base  .
docker build -t 7dtd-setup:${IMAGE_VERSION} ${buildArg} -f Dockerfile-setup .
docker build -t 7dtd-update:${IMAGE_VERSION} ${buildArg} -f Dockerfile-update .
docker build -t 7dtd-boot:${IMAGE_VERSION}  ${buildArg} -f Dockerfile-boot  .
cd - > /dev/null
