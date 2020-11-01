export PATH="$HOME/bin:/usr/local/sbin:$PATH"

## node stuff
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export USER_BIN="$HOME/.dotfiles/bin"
export GIT_BIN="$HOME/.dotfiles/git/bin"

export PATH="$PATH:$GIT_BIN:$USER_BIN"
