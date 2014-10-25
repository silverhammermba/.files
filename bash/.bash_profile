export PATH=$HOME/.local/bin:$(ruby -e 'puts Gem.user_dir')/bin:$PATH
export RUBYLIB=$HOME/.local/lib/ruby

umask 0002

[[ -f ~/.bashrc ]] && . ~/.bashrc

[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx
