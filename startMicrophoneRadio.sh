 #! /bin/sh

# Streaming both audio & microphone
# Allow to send your voice over a microphone and music-audio
ffmpeg -f alsa -i hw:0 -acodec libmp3lame -ab 128k -vn -ac 2 -c:a mp3 -b:a 192k -ar 44100 -legacy_icecast 1 -f mp3 icecast://source:HsDkgHYb@fluoz.zeno.fm:80/zwqxuffa5v8uv/source
