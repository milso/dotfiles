#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Color
alias ls='ls --color=auto'

# PS1
export PS1='\[\033k\033\\\]┌──[\e[0;36m\u\e[0m.\e[0;34m\h\e[0m]─[\e[1;34m\w\e[0m]\n└─\$ '
PATH="/home/milso/.bin:/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin"
export PATH="/usr/local/lib/cw:$PATH"

# Set terminal
export TERM=rxvt-unicode-256color

# Loads of aliases

alias s='sudo packer -S'
alias r='sudo pacman -R'
alias ss='sudo packer -Ss'
alias syu='sudo pacman -Syu'
alias syy='sudo pacman -Syy'
alias qu='sudo pacman -Qu'
alias q='pacman -Q'

alias start='sudo rc.d start'
alias stop='sudo rc.d stop'
alias restart='sudo rc.d restart'

alias nc='ncmpcpp'
alias c='clear'

alias is='ps -aux | grep -v grep | grep $1'
alias k='killall $1'
alias mem='ps --sort -rss -o comm,pmem,rss -C'

alias htop='htop -u milso'
alias view='sxiv'
alias play='mplayer $1 > ~/.mplayer.log'

alias push='git push origin master'
alias commit='git commit -m '_''
alias add='git add'
alias pushfull='add . && commit  && push'

alias ssid='sudo nmcli dev wifi list'
alias wifi='sudo nmcli nm wifi on'

