PS1='\t \u@\h \w$ '

export HISTSIZE=5000
export HISTTIMEFORMAT="%s "
PROMPT_COMMAND="${PROMPT_COMMAND:+$PROMPT_COMMAND ; }"'echo $$ $USER \
    "$(history 1)" >> ~/.bash_eternal_history'
export PATH=~/bin:$PATH

set savehist=1

set -o ignoreeof

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
export EDITOR=vim

alias g=git

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
