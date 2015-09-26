# start X at login
if status --is-login
    if test -z "$DISPLAY" -a $XDG_VTNR -eq 1
         exec startx -- -keeptty
    end
end
#test $TERM != "screen"; and exec tmux