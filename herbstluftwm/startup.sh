#!/bin/bash
killall compton &
(sleep 2s && compton) &
killall trayer &
## trayer with dzenpanel on bottom
#(sleep 2s && trayer --edge bottom --align right --widthtype pixel --width 200 --height 16 --transparent true --alpha 0 --tint 0x333333 --expand false) &
## trayer with no dzenpanel
(sleeps 2s && trayer --edge bottom --align center --widthype pixel --width 50 --height 15 --transparent true --alpha 255 --tint 0x333333 --expand true) &
feh --bg-fill ~/.wallpapers/9319373740_02243839ce_o\(2\).jpg &
