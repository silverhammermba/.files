# start X at login on TTY1
[[ $TTY == "/dev/tty1" ]] && exec startx
