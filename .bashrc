# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

HISTSIZE=10000
HISTFILESIZE=20000
HISTCONTROL="erasedups:ignoreboth"
# Don't record some commands
export HISTIGNORE="&:[ ]*:exit:ls:bg:fg:history:clear"

# append to history
shopt -s histappend

# update windowsize, lines and columns after a command
shopt -s checkwinsize

# prevent file overwrite on stdout redirection, force with '>|'
set -o noclobber

# User specific environment
export PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '

# User specific aliases and functions
alias ls='ls --color=auto'
alias ll='ls -lah --color=auto'
alias grep='grep --color=auto'

# User specific environment and startup programs
export PATH="$HOME/.local/bin:/opt/nvim:$PATH"

export EDITOR="nvim"
export VISUAL="nvim"
export SUDO_EDITOR="nvim"
