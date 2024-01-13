# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment

export PS1="\[$(tput bold)$(tput setaf 3)\][\u@\h \w]$ \[$(tput sgr0)\]"

alias ls='ls --color=auto'
alias grep='grep --color=auto'

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
