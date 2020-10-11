#! bin/bash

set -u

git secrets --install ~/.git-templates/git-secrets && git config --global init.templatedir '~/.git-templates/git-secrets'

cat << END

END
