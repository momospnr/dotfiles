#! bin/bash

set -u

# シェルファイル実行ディレクトリ取得
DIR=$(cd $(dirname $0) && pwd)

cd $DIR

ln -snfv $DIR/php/7.2/php.ini /usr/local/etc/php/7.2/php.ini
ln -snfv $DIR/php/7.3/php.ini /usr/local/etc/php/7.3/php.ini
ln -snfv $DIR/php/7.4/php.ini /usr/local/etc/php/7.4/php.ini

cat << END

END
