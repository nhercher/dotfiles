#!/bin/bash
killall compton &
(sleep 2s && compton) &
#killall trayer &
#(sleep 2s && trayer --edge top --align right --widthtype pixel --width 200 --height 16 --transparent true --alpha 0 --tint 0x333333) &
feh --bg-fill ~/.wallpapers/9319373740_02243839ce_o\(2\).jpg &
