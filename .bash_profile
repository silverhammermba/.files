export PATH=$HOME/.local/bin:$HOME/.gem/ruby/1.9.1/bin:$PATH
export RUBYLIB=$HOME/.local/lib/ruby

[[ -f ~/.bashrc ]] && . ~/.bashrc

[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx
