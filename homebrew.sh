#!/bin/bash

echo "installing homebrew"
which brew >/dev/null 2>&1 || /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
exec $SHELL -l

echo "checking homebrew"
which brew >/dev/null 2>&1 && brew doctor

echo "adding brew-cask fonts"
which brew >/dev/null 2>&1 && brew tap homebrew/cask-fonts

formulas=(
  git
  gh
  zsh
  zsh-autosuggestions
  zsh-syntax-highlighting
  starship
  gibo
  wget
  curl
  tree
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
  the_silver_searcher
  jq
  act
  volta
  yukiarrr/tap/ecsk
  imagemagick
  wrk
  rustup-init
  bison
  re2c
)

echo "installing brew apps"
for formula in "${formulas[@]}"; do
  brew install $formula || brew upgrade $formula
done

casks=(
  google-chrome
  google-japanese-ime
  firefox
  karabiner-elements
  visual-studio-code
  docker
  postman
  tableplus
  dbngin
  iterm2
  owasp-zap
  slack
  1password
  1password-cli
  dropbox
  onedrive
  raindropio
  font-hack-nerd-font
  font-ricty-diminished
  font-fira-code
  font-noto-sans-cjk-jp
  keka
  phpstorm
  microsoft-teams
  zoom
  table-tool
  rectangle
  session-manager-plugin
  figma
  github
  deepl
  meetingbar
  discord
  adobe-creative-cloud
  alt-tab
  raycast
  mysqlworkbench
  warp
)

echo "installing brew casks"
for cask in ${casks[@]}; do
  brew install --cask $cask || brew upgrade --cask $cask
done

echo "cleaning up brew"
brew cleanup

cat << END

END
