#! bin/bash

set -u

# シェルファイル実行ディレクトリ取得
DIR=$(cd $(dirname $0) && pwd)

cd $DIR

PHP_INI_DIR=/usr/local/etc
if [ "$(uname -m)" = "arm64" ];then
  PHP_INI_DIR=/opt/homebrew/etc
fi

ln -snfv $DIR/php/7.4/php.ini $PHP_INI_DIR/php/7.4/php.ini
ln -snfv $DIR/php/8.0/php.ini $PHP_INI_DIR/php/8.0/php.ini
ln -snfv $DIR/php/8.1/php.ini $PHP_INI_DIR/php/8.1/php.ini

cat << END

END
