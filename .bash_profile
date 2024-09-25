export VISUAL="code --wait"
export EDITOR=vi
export REACT_EDITOR=vsc

export PS1="\u@\h \[\033[32m\]\w\[\033[33m\]\$(git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/')\[\033[00m\] $ "

# include .profile if it exists
if [ -f "$HOME/.profile" ]; then
    . "$HOME/.profile"
fi
