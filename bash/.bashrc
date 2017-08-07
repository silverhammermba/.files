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
	LESS_TERMCAP_md=$(tput bold; tput setaf 33) \
	LESS_TERMCAP_me=$(tput sgr0) \
	LESS_TERMCAP_so=$(tput bold; tput setab 127) \
	LESS_TERMCAP_se=$(tput sgr0) \
	LESS_TERMCAP_us=$(tput smul; tput bold; tput setaf 40) \
	LESS_TERMCAP_ue=$(tput sgr0) \
	command man "$@"
}

# autocomplete binaries after certain commands
complete -cf sudo
complete -cf man
complete -cf which
complete -cf launch

alias \:q='exit'
alias \:e='vim'
alias userctl='systemctl --user'

bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'
