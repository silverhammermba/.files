#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export PATH=$HOME/bin:$PATH:$HOME/.gem/ruby/1.9.1/bin
export RUBYLIB=$HOME/lib/ruby

alias ls='ls --color=auto -B'
eval $(dircolors -b)
alias grep='grep --color=auto'
export LESS="-R"
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

complete -cf sudo
complete -cf man
complete -cf which

alias \:q='exit'
alias \:e='vim'
alias reboot='sudo reboot'
alias halt='sudo halt'
alias gmail='chromium --app="https://mail.google.com"'

PS1='\[\e[1m\e[32m\]\W\[\e[0m\]\[\e[1;35m\]%\[\e[0m\] '
