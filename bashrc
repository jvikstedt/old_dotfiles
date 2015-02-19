setxkbmap -option caps:escape
alias cctags='ctags -R --languages=ruby --exclude=.git --exclude=log . $(bundle list --paths)'
alias ve='source ~/virtual_env/bin/activate'
alias tml="tmux list-sessions"
alias tma="tmux -2 attach -t $1"
alias tmk="tmux kill-session -t $1"

export EDITOR='vim'

if [[ -z $TMUX ]]; then
    if [ -e /usr/share/terminfo/x/xterm+256color ]; then # may be xterm-256 depending on your distro
        export TERM='xterm-256color'
    else
        export TERM='xterm'
    fi
else
    if [ -e /usr/share/terminfo/s/screen-256color ]; then
        export TERM='screen-256color'
    else
        export TERM='screen'
    fi
fi

source ~/.vim/tmuxinator.bash
