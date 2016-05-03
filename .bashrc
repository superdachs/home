#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

unset SSH_ASKPASS

alias emacs='emacs -nw'
alias ll='ls -al'
alias ls='ls --color=auto'
alias dev='ssh dev'
alias dep='ssh dep'
PS1='[\u@\h \W]\$ '
