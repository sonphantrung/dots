#/bin/sh

ffmpeg -f x11grab -video_size 1366x768 -framerate 25 -i $DISPLAY -c:v libx264 ~/Videos/screen-$(date +%Y.%m.%d-%H.%M.%S).mp4
