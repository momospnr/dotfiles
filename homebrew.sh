#!/bin/bash

echo "installing homebrew"
which brew >/dev/null 2>&1 || /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "checking homebrew"
which brew >/dev/null 2>&1 && brew doctor

echo "updating homebrew"
which brew >/dev/null 2>&1 && brew update

echo "adding brew"
which brew >/dev/null 2>&1 && brew tap brew/heroku

echo "enable brew-cask"
which brew >/dev/null 2>&1 && brew cask

echo "adding brew-cask fonts"
which brew >/dev/null 2>&1 && brew tap homebrew/cask-fonts

formulas=(
  git
  zsh
  zsh-autosuggestions
  zsh-syntax-highlighting
  starship
  gibo
  wget
  curl
  tree
  yarn
  nodebrew
  php@7.2
  php@7.3
  php
  mysql@5.7
  redis
  heroku
  awscli
  circleci
  composer
  git-secrets
  rbenv
  ruby-build
  go
  ghq
  peco
  unison
  eugenmayer/dockersync/unox
  graphviz
  libiconv
  gcc
)

echo "installing brew apps"
for formula in "${formulas[@]}"; do
  if [ "$formula" = "yarn" ]; then
    brew install yarn --ignore-dependencies || brew upgrade yarn
  else
    brew install $formula || brew upgrade $formula
  fi
done

casks=(
  google-chrome
  google-japanese-ime
  firefox
  karabiner-elements
  visual-studio-code
  docker
  postman
  virtualbox
  tableplus
  dbngin
  iterm2
  owasp-zap
  slack
  chatwork
  1password
  dropbox
  onedrive
  evernote
  skype
  microsoft-teams
  skitch
  raindropio
  spotify
  quik
  font-hack-nerd-font
  font-ricty-diminished
  font-noto-sans-cjk-jp
  keka
  phpstorm
  microsoft-teams
  zoomus
  kindle
  kindle-previewer
  calibre
  table-tool
  rectangle
)

echo "installing brew casks"
for cask in ${casks[@]}; do
  brew cask install $cask || brew cask upgrade $cask
done

echo "cleaning up brew"
brew cleanup

cat << END

END
