#/bin/bash

ffmpeg -f x11grab -video_size 1366x768 -framerate 25 -i $DISPLAY -c:v libx264 screen.mp4
