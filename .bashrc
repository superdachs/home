#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

echo_c()
{
    w=$(stty size | cut -d" " -f2)
    l=${#1}
    printf "%"$((l+(w-l)/2))"s\n" "$1"
}

MEM_TOTAL=$(grep MemTotal /proc/meminfo | awk '{print $2}')
MEM_FREE=$(grep MemFree /proc/meminfo | awk '{print $2}')

echo " "
echo_c "**** GNU BASH VERSION $BASH_VERSION ****"
echo_c "$MEM_TOTAL KB RAM $MEM_FREE KILO BYTES FREE"
echo " "

unset SSH_ASKPASS

alias emacs='emacs -nw'
alias ll='ls -al'
alias ls='ls --color=auto'
alias dev='ssh dev'
alias dep='ssh dep'
alias LIST='/home/kauerauf/devel/C64/LIST'
#PS1='\[\e[1m\]READY:\[\e[0m\]\n'
PS1='\[\e[1m\]\e[48;5;124m ☠ READY\e[0m\e[38;5;124m \[\e[0m\]'
mux() { [[ -z "$TMUX" ]] && { tmux attach -d || tmux -f $HOME/.tmux.conf new -s secured ;} }
mux

tmux set status-interval 1

. /etc/profile.d/vte.sh
