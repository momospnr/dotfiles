#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...

# Homebrew
export PATH=$HOME/bin:$PATH
export PATH=/usr/local/sbin:$PATH

# nodebrew
export PATH=$HOME/.nodebrew/current/bin:$PATH
export NODEBREW_ROOT=$HOME/.nodebrew

# yarn
export PATH="$PATH:/opt/yarn-[version]/bin"

# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# use php on homebrew
## php 7.4
export PATH="/usr/local/opt/php/bin:$PATH"
export PATH="/usr/local/opt/php/sbin:$PATH"
## php 7.3
#export PATH="/usr/local/opt/php@7.3/bin:$PATH"
#export PATH="/usr/local/opt/php@7.3/sbin:$PATH"
## php 7.2
# export PATH="/usr/local/opt/php@7.2/bin:$PATH"
# export PATH="/usr/local/opt/php@7.2/sbin:$PATH"

# user mysql@5.7 on homebrew
export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"

# Golang
export GOPATH="${HOME}/dev"
export GO111MODULE=on
export GOROOT="$(brew --prefix golang)/libexec"
export PATH="$PATH:${GOPATH}/bin:${GOROOT}/bin"
test -d "${GOPATH}" || mkdir "${GOPATH}"
test -d "${GOPATH}/src/github.com" || mkdir -p "${GOPATH}/src/github.com"
