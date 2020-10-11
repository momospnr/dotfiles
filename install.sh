#!/bin/sh

set -u

echo "setup starts"

sudo xcode-select --install

# シェルファイル実行ディレクトリ取得
DIR=$(cd $(dirname $0) && pwd)

cd $DIR

for f in .??*; do
  [ "$f" = ".git" ] && continue
  [ "$f" = ".editorconfig" ] && continue

  ln -snfv "$DIR/$f" ~
done

sudo ln -snfv "$DIR/shells" "/etc/shells"

cat << END

END
