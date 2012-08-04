# .bashrc

# User specific aliases and functions

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

export EDITOR=vim

#gitprompt
export PS0='\[\e[0;36m\]\t\[\e[0m\] \[\e[0;33m\]\u@\[\e[0m\]\[\e[0;31m\]\h\[\e[0m\] {\[\e[1;33m\]\w\[\e[0m\]}\[\e[0;36m\]%{(%b)[%u%c%f%t\[\e[0;36m\]]%}\[\e[0m\]$'
#export PROMPT_COMMAND=$PROMPT_COMMAND';export PS1=$(gitprompt.pl statuscount=1 u=%[%e[31m%] c=%[%e[32m%] f=%[%e[1\;37m%])'
export PATH="$PATH:$HOME/bin"
export PATH="$PATH:/Applications/VMware\ Fusion.app/Contents/Library"

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
