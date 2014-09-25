setxkbmap -option caps:escape
export TERM=xterm-256color
alias cctags='ctags -R --languages=ruby --exclude=.git --exclude=log . $(bundle list --paths)'
