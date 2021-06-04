 #! /bin/sh

# Streaming only audio no microphone
# Useful when no voice is needed
# first use pacmd list-sources in order to list devices
ffmpeg -f pulse -i alsa_output.pci-0000_00_1b.0.analog-stereo.monitor -acodec libmp3lame -ab 128k -vn -ac 2 -c:a mp3 -b:a 192k -ar 44100 -legacy_icecast 1 -f mp3 icecast://source:HsDkgHYb@fluoz.zeno.fm:80/zwqxuffa5v8uv/source


