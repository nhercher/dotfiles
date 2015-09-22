#!/bin/bash

A=`pacmd dump | grep "set-sink-volume alsa_output.pci-0000_00_1b.0.analog-stereo" | cut -d " " -f 3`
B=$((A - 0x01000))
if [ $(($B)) -lt $((0x00000)) ]
 then
    B=$((0x00000))
fi
pactl set-sink-volume 0 `printf "0x%X" $B`
