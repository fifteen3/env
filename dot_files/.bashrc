# .bashrc

# User specific aliases and functions

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

export EDITOR=vim

#gitprompt
GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_SHOWUNTRACKEDFILES=1
GIT_PS1_SHOWSTASHSTATE=1
GIT_PS1_SHOWUPSTREAM=verbose
GIT_PS1_SHOWCOLORHINTS=1
source ~/.git-prompt.sh

PROMPT_COMMAND='__git_ps1 "\u@\h:\w" "> "'  


source ~/perl5/perlbrew/etc/bashrc
# environment variables for PostgreSQL

# export PGHOST=localhost
if [[ -d /Applications/Postgres.app ]]; then
  export POSTGRES_HOME=/Applications/Postgres.app/Contents/MacOS
elif [[ -e /usr/local/bin/postgres ]]; then
  export POSTGRES_HOME=/usr/local
elif [[ -e /usr/local/pgsql/bin/postgres ]]; then
  export POSTGRES_HOME=/usr/local/pgsql
fi

if [[ -n "$POSTGRES_HOME" ]]; then
  if [[ -d $POSTGRES_HOME/bin ]]; then
    export PATH=$POSTGRES_HOME/bin:$PATH
  fi
fi

