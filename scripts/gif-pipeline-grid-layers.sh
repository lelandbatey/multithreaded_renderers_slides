#!/bin/bash
./scripts/rasterize-svg.sh 9902*visible.svg

#ffmpeg -y -framerate 0.5 -pattern_type glob -i '9902*visible.png' -c:v libx264 -pix_fmt yuv420p -vf 'scale=-1:-1' out00.mp4
ffmpeg -y -framerate 0.5 -pattern_type glob -i '9902*visible.png' -c:v libx264 -pix_fmt yuv420p gridlayers00.mp4

./scripts/create_gif.sh gridlayers00.mp4 gridlayers00.gif
