# Homebrew
export PATH=$HOME/bin:$PATH
export PATH=/usr/local/sbin:$PATH
eval $(/opt/homebrew/bin/brew shellenv)

# phpenv
# export PATH="$HOME/.phpenv/bin:$PATH"
# eval "$(phpenv init -)"

# mise
eval "$(/opt/homebrew/bin/mise activate bash)"
export PATH="$HOME/.local/share/mise/shims:$PATH"
