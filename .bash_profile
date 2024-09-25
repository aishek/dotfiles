export VISUAL="code --wait"
export EDITOR=vi
export REACT_EDITOR=vsc

# include .profile if it exists
if [ -f "$HOME/.profile" ]; then
    . "$HOME/.profile"
fi

export PS1="\[\033[1;32m\]\u@\h\[\033[00m\]:\[\033[34m\]\w\[\033[33m\]\$(git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/')\[\033[00m\] $ "
