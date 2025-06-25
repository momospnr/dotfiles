#LANG
export LANG=ja_JP.UTF-8

# volta
export VOLTA_HOME=$HOME/.volta
export PATH="$VOLTA_HOME/bin:$PATH"

# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# user mysql@5.7 on homebrew
export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"

# phpenv
export PHPENV_ROOT="${HOME}/.phpenv"
if [ -d "${PHPENV_ROOT}" ]; then
  export PATH="${PHPENV_ROOT}/bin:${PATH}"
  eval "$(phpenv init -)"
fi

# MySQL Client
export PATH="/opt/homebrew/opt/mysql-client@8.4/bin:$PATH"

# Golang
export GOPATH="${HOME}/dev"
export GO111MODULE=on
export GOROOT="$(brew --prefix golang)/libexec"
export PATH="$PATH:${GOPATH}/bin:${GOROOT}/bin"
test -d "${GOPATH}" || mkdir "${GOPATH}"
test -d "${GOPATH}/src/github.com" || mkdir -p "${GOPATH}/src/github.com"

# python
alias python='python3'

# openjdk
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"
export JAVA_HOME="/opt/homebrew/Cellar/openjdk/19.0.2/libexec/openjdk.jdk/Contents/Home"

# 補完
autoload -Uz compinit
compinit -u

# zsh-autosuggestions
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=8"
ZSH_AUTOSUGGEST_STRATEGY=(history completion)

# zsh-syntax-highlighting
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# ビープ音の停止(補完時)
setopt nolistbeep

# History設定
HISTFILE=$HOME/.zsh_history
HISTSIZE=100000
SAVEHIST=100000
setopt share_history
setopt hist_ignore_dups
setopt hist_ignore_all_dups
setopt hist_ignore_space
setopt hist_reduce_blanks

# starship
eval "$(starship init zsh)"

# Code
[[ "$TERM_PROGRAM" == "vscode" ]] && . "$(code --locate-shell-integration-path zsh)"

# openssl
export PATH="$(brew --prefix)/opt/openssl@1.1/bin:$PATH"

# 1Password
source $HOME/.config/op/plugins.sh

export DD_INSTRUMENTATION_TELEMETRY_ENABLE=0
