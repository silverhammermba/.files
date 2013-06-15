# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
unsetopt beep
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/max/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# aliases
alias ls='ls --color'
alias grep='grep --color=auto'
alias \:q='exit'
alias \:e='vim'

# prompt stuff
autoload -U promptinit && promptinit
autoload -U colors && colors
autoload -Uz vcs_info

zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' stagedstr '+'
zstyle ':vcs_info:*' unstagedstr '*'

precmd() {
	vcs_info
}

zstyle ':vcs_info:git*' formats "%b%m%u%c"

setopt prompt_subst
PROMPT="%{$fg_bold[blue]%}%m%{$reset_color%}:%{$fg[yellow]%}%~%{$reset_color%}%# "
RPROMPT='${vcs_info_msg_0_}'
