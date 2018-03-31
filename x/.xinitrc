export I3=false
~/.xprofile
if [ "$I3" = true ]; then
	exec i3 1>~/.config/i3/log 2>~/.config/i3/err
else
	exec gnome-session
fi
