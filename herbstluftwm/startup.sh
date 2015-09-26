#!/bin/bash
killall compton &
(sleep 2s && compton) &
killall tint2 &
(sleep 2s && tint2) &
feh --bg-fill ~/.wallpapers/remains2.jpg &
