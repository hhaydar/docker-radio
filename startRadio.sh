 #! /bin/sh

ffmpeg -f alsa -i hw:0,0 -acodec libmp3lame -ab 32k -vn -c:a mp3 -b:a 64k -ar 44100 -legacy_icecast 1 -f mp3 icecast://source:HsDkgHYb@fluoz.zeno.fm:80/zwqxuffa5v8uv/source &
pavucontrol