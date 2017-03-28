# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# prompt
GIT_PS1_SHOWDIRTYSTATE="true"
GIT_PS1_SHOWUPSTREAM="auto"
source $HOME/.git-completion.sh
source $HOME/.git-prompt.sh

BLUE="\[$(tput setaf 4)\]"
YELLOW="\[$(tput setaf 3)\]"
BOLD="\[$(tput bold)\]"
RESET="\[$(tput sgr0)\]"

export PS1="\$(__git_ps1 \"%s \")$BLUE$BOLD\h$RESET:$YELLOW\W$RESET\$ "

export EDITOR=vim
# change how ls shows spaces
export QUOTING_STYLE=escape

# colors
alias ls='ls --color=auto'
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

# completion for certain commands
complete -cf sudo
complete -c man which

alias \:q='exit'
alias \:e='vim'
alias userctl='systemctl --user'
function launch () {
	($@ &>/dev/null &)
}

bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'
