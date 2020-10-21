#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
alias vi=nvim
alias vim=nvim
alias sudo='sudo '
alias joplin-cli='joplin --profile ~/.config/joplin-desktop/'
alias ll='ls -lrt'
export QT_QPA_PLATFORMTHEME=qt5ct
#export PS1='\e[35;35;3m\u@\h:\w \[$?\]\e[0m \e[32;32;3m\d \A\e[m \e[31;31;2m $(tput bold)`acpi -b | sed "s/Battery 0: //g"| sed "s/,//g"` \n\e[m $ '
#export PS1='\[$(tput bold)\]\[\e[35;35;3m\u@\h:\w [$?] \e[32;32;3m\d \A \e[31;31;2m`acpi -b | sed "s/Battery 0: //g"| sed "s/,//g"` \n$ '
export PS1='\[\e[01;31m\][\u@\h]\[\e[0m\]\[\e[01;32m\][`pwd`]\[\e[0m\]\[\e[01;35m\][$?]\[\e[0m\]\[\e[01;34m\][\d \A]\[\e[0m\]\[\e[01;36m\][`acpi -b`] \n\$ \[\e[0m\]'

/usr/bin/neofetch
