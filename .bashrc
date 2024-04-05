#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias neofetch='fastfetch'
alias py='/bin/python'
alias kys='shutdown now'
alias browse='./browse'
PS1='[\u@\h \W]\$ '

eval "$(zoxide init --cmd cd bash)" # launch zoxide (cd replacement) and overwrite cd with an alias

# Custom environment variables (PATH)
. ~/.env-var-setter

