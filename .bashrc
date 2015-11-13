#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

unset SSH_ASKPASS

alias emacs='emacs -nw'
alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
