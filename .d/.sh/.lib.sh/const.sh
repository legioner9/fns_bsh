#!/bin/bash

# PS1="[\u@\h \w$(__git_ps1 " (%s)")]\n\$ "

# export GIT_PS1_SHOWDIRTYSTATE=1
# export PS1='\u@\H \w$(__git_ps1 " (%s)")\$ '
BLINK='\033[5m'
# https://symbl.cc/ru/
# https://wikilinux.ru/all_articles/bash-chast-5-upravlenie-cvetom
# PS1='\033[0;34m\033[1m< \u@\h \033[0;32m\033[1m${PWD}\033[0;35m\033[1m$(__git_ps1 " (%s)")\033[0;34m\033[1m >>>\n>>>\$\033[0m '
PS1='\033[0;34m\033[1m❮ \u@\h \033[0;32m\033[1m${PWD}\033[0;35m\033[1m$(__git_ps1 " (%s)")\033[0;34m\033[1m ❯\n\033[31m ᐅ\033[0m '
# PS1=$'\u2234\u2192\u263f\u2605'