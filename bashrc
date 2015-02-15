setxkbmap -option caps:escape
export TERM=xterm-256color
alias cctags='ctags -R --languages=ruby --exclude=.git --exclude=log . $(bundle list --paths)'
alias ve='source ~/virtual_env/bin/activate'
alias tml="tmux list-sessions"
alias tma="tmux -2 attach -t $1"
alias tmk="tmux kill-session -t $1"

export EDITOR='vim'
