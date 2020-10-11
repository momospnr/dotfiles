#! bin/sh

set -u

pip3 install online-judge-tools selenium
yarn global add atcoder-cli

# シェルファイル実行ディレクトリ取得
DIR=$(cd $(dirname $0) && pwd)
ACC_DIR=$(echo `acc config-dir`)

cd $DIR

cp -R $DIR/php $ACC_DIR/
cp -R $DIR/cpp $ACC_DIR/
