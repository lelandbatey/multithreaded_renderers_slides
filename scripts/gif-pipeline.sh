#!/bin/bash
./scripts/rasterize-svg.sh 991*.svg

#ffmpeg -y -framerate 0.5 -pattern_type glob -i '991*.png' -c:v libx264 -pix_fmt yuv420p -vf 'scale=-1:-1' out00.mp4
ffmpeg -y -framerate 0.5 -pattern_type glob -i '991*.png' -c:v libx264 -pix_fmt yuv420p out00.mp4

./scripts/create_gif.sh out00.mp4 out00.gif
