#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

GIT_PS1_SHOWDIRTYSTATE="true"
GIT_PS1_SHOWUPSTREAM="auto"
source $HOME/.git-completion.sh
source $HOME/.git-prompt.sh

export PATH=$HOME/bin:$PATH:$HOME/.gem/ruby/1.9.1/bin
export RUBYLIB=$HOME/lib/ruby

alias ls='ls --color=auto -B'
eval $(dircolors -b)
alias grep='grep --color=auto'
export LESS="-FR"
man() {
	env \
		LESS_TERMCAP_mb=$(printf "\e[1;31m") \
		LESS_TERMCAP_md=$(printf "\e[1;31m") \
		LESS_TERMCAP_me=$(printf "\e[0m") \
		LESS_TERMCAP_se=$(printf "\e[0m") \
		LESS_TERMCAP_so=$(printf "\e[1;44;33m") \
		LESS_TERMCAP_ue=$(printf "\e[0m") \
		LESS_TERMCAP_us=$(printf "\e[1;32m") \
			man "$@"
}

# autocomplete binaries after certain commands
complete -cf sudo
complete -cf man
complete -cf which

alias \:q='exit'
alias \:e='vim'
alias gmail='chromium --app="https://mail.google.com"'

export PS1='$(__git_ps1 "%s ")\[\e[1;34m\]\h\[\e[m\]:\[\e[0;33m\]\W\[\e[m\]$ '

bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'
