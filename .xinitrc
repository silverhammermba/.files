xrdb -merge ~/.Xresources
# swap .xmedia files
mv ~/.xmedia ~/.xmedia.tmp
mv ~/.xmedia.other ~/.xmedia
mv ~/.xmedia.tmp ~/.xmedia.other
# start current .xmedia
~/.xmedia
