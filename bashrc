# VI mode
set -o vi


# Terminal Prompt
PS1='[\u@\h \w]\$ '


# PATH
export PATH="/usr/local/bin:/usr/local/sbin:~/bin:$PATH"


# EDITOR
#export EDITOR=/usr/local/bin/mvim
#alias vi='env LANG=ja_JP.UTF-8 /usr/local/bin/mvim "$@"'
#alias vim='env LANG=ja_JP.UTF-8 /usr/local/bin/mvim "$@"'


# Alias
alias ls='ls -F'
alias rm='rm -i'
alias mv='mv -i'
alias cp='cp -pi'


# Tmux
#if [ $TERM != "screen-256color" ] && [  $TERM != "screen" ]; then
#	    tmux attach || tmux new; exit
#fi
