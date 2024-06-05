#! bin/bash

set -u

# brew unlink
brew unlink php
brew unlink php@7.4
brew unlink php@8.0

# Install phpenv
curl -L https://raw.githubusercontent.com/phpenv/phpenv-installer/master/bin/phpenv-installer | bash
exec $SHELL -l
phpenv update

# Link brew installed php
curl -fsSL https://gist.githubusercontent.com/yuki777/6244823b8aa8cf4457e97e6407ada5ad/raw/19c96b476b038935ce57f72ac60ea616a23b5e73/link-phps.bash | bash
# ReLink
# curl -fsSL https://gist.githubusercontent.com/yuki777/6244823b8aa8cf4457e97e6407ada5ad/raw/38bc1093bc208b88944970b0ce5c91c9b2ac590c/link-phps.bash | bash
phpenv global 8.1
exec $SHELL -l

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
ln -snfv $DIR/php/8.2/php.ini $PHP_INI_DIR/php/8.2/php.ini

cat << END

END
