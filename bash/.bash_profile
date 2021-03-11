export PATH=$HOME/.local/bin:$(ruby -e 'puts Gem.user_dir')/bin:$PATH
export RUBYLIB="$HOME/.local/lib/ruby"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export GIMP2_DIRECTORY="$XDG_CONFIG_HOME/gimp"
export GNUPGHOME="$XDG_CONFIG_HOME/gnupg"
export MPLAYER_HOME="$XDG_CONFIG_HOME/mplayer"
export MOZ_ENABLE_WAYLAND=1
export SDL_VIDEODRIVER=wayland

[[ -f ~/.bashrc ]] && . ~/.bashrc

[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec sway
