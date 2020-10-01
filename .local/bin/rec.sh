#!/bin/bash
ffmpeg -f x11grab -video_size 1366x768 -framerate 30 -i $DISPLAY -f alsa -i default -c:v libx264 -preset ultrafast -c:a aac screen-$(date +%Y.%m.%d-%H.%M.%S).mp4
