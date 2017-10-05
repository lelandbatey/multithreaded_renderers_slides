#!/bin/sh

palette="/tmp/palette.png"

#filters="fps=0.5,scale=890:-1:flags=lanczos"
filters="fps=0.5"

ffmpeg -v warning -i $1 -vf "$filters,palettegen" -y $palette
ffmpeg -v warning -i $1 -i $palette -lavfi "$filters [x]; [x][1:v] paletteuse" -y $2
