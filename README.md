# dotfiles

## Mac Setup

```sh
sh install.sh
sh homebrew.sh
sh app.sh
sh zsh.sh
sh php.sh
gem install mailcatcher docker-sync
```

## VSCode

### Setup

```sh
cd vscode
sh vscode.sh
```

### Export extensions file

```sh
cd vscode
code --list-extensions > extensions
```

## atcoder

### CLI Setup

http://tatamo.81.la/blog/2018/12/07/atcoder-cli-tutorial/

```sh
cd atcoder
sh atcoder.sh
```

### PHP Test Env Setup

Thanks For KushibikiMashu

https://github.com/KushibikiMashu/at-coder-with-php
https://panda-program.com/posts/how-to-set-up-development-environment-of-at-coder-with-php

```sh
git clone git@github.com:KushibikiMashu/at-coder-with-php.git
docker build -t atcoder/php:latest .
```

### Create Contest File & Test

This is an example.

```sh
acc new abc101
cd abc101/a
docker run --rm -v $(pwd)/src:/home/src -v $(pwd)/tests:/home/tests atcoder/php
```
