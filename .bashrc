#!/bin/bash

if [ -f /etc/bashrc ]; then source /etc/bashrc; fi

# Uncomment these
force_color_prompt=yes
alias grep='grep --color'
alias ls='ls -hF --color=tty'

# Append these
set -o vi
shopt -s globstar extglob
IFS=$'\n'
PS1="$(sed -e 's/:\([^:]*\)$/ $(date +%y.%m.%d-%H:%M:%S) \1/' <<< $PS1)"
PS1="\n$PS1\n\\$ "
PS1='\n[\u@\h \w]\n\$ '
HISTCONTROL=ignorespace:ignoredups:erasedups
export EDITOR=vim

function grep-less-color { grep $* --color=always | less -r; }
alias glc=grep-less-color
alias logdate='date +%Y%m%d-%H%M%S'

export LC_ALL='en_US.UTF-8'
