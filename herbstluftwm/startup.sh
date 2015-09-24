#!/bin/bash
killall compton &
(sleep 2s && compton) &
killall trayer &
(sleep 2s && trayer --edge bottom --align center --widthtype pixel --width 50 --height 15 --transparent true --alpha 255 --tint 0x333333 --expand true) &
feh --bg-fill ~/.wallpapers/9319373740_02243839ce_o\(2\).jpg &
