path=(
	/sbin 
	/bin 
	/usr/local/sbin 
	/usr/local/bin 
	/usr/sbin 
	/usr/bin 
	/usr/lib/go-1.10/bin
	$HOME/bin
	$HOME/.local/bin
	/snap
	)
#export PYTHONPATH=$PYTHONPATH:$HOME/
if [ -d $HOME/.local/share/wrk ]; then
	export PATH=$PATH:$HOME/.local/share/wrk
fi

export CVS_RSH=ssh
export SHELL=`command -v zsh`
export SVN_SSH="ssh"
export EDITOR="vim"

export HISTFILE=${HOME}/.zsh_history
export HISTSIZE=1000
export SAVEHIST=100000
export CUPS_USER=mhonda

# fly.io
export FLYCTL_INSTALL="/home/micchie/.fly"
export PATH="$FLYCTL_INSTALL/bin:$PATH"

