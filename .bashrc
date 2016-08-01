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
alias LIST='/home/kauerauf/devel/C64/LIST'
PS1='\[\e[1m\]READY:\[\e[1m\]\n'

mux() { [[ -z "$TMUX" ]] && { tmux attach -d || tmux -f $HOME/.tmux.conf new -s secured ;} }
mux

. /etc/profile.d/vte.sh
