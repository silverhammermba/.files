export PATH=$HOME/.local/bin:$(ruby -e 'puts Gem.user_dir'):$PATH
export RUBYLIB=$HOME/.local/lib/ruby

[[ -f ~/.bashrc ]] && . ~/.bashrc

[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx
