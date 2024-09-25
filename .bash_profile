export VISUAL="code --wait"
export EDITOR=vi
export REACT_EDITOR=vsc

parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\u@\h \[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "

# include .profile if it exists
if [ -f "$HOME/.profile" ]; then
    . "$HOME/.profile"
fi
