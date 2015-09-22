#!/bin/bash

A=`pacmd dump | grep "set-sink-mute alsa_output.pci-0000_00_1b.0.analog-stereo" | cut -d " " -f 3`
if [ $A = "no" ]
then
    pactl set-sink-mute 0 yes
else
    pactl set-sink-mute 0 no
fi
