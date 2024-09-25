export VISUAL="code --wait"
export EDITOR=vi
export REACT_EDITOR=vsc

export PS1="\u@\h \[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "

alias g="git"
alias grmb='git branch --merged | egrep -v "(^\*|master|dev)" | xargs git branch -d'
alias be="bundle exec"
