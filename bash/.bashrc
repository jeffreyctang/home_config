PS1='\t \u@\h \w$ '

export HISTTIMEFORMAT="%s "
PROMPT_COMMAND="${PROMPT_COMMAND:+$PROMPT_COMMAND ; }"'echo $$ $USER \
    "$(history 1)" >> ~/.bash_eternal_history'
export PATH=~/bin:$PATH

set savehist=10000

set -o ignoreeof
