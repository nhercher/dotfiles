#!/bin/bash

# finds all flac files in folder and then uses ffmpeg to convert it to mp3

for a in *.flac; do
  ffmpeg -i "$a" -qscale:a 0 "${a[@]/%flac/mp3}"
done
