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

ln -snfv "$DIR/shells" "/etc/shells"

mkdir -p ~/.config
ln -snfv "$DIR/starship.toml" ~/.config/starship.toml

cat << END

END
