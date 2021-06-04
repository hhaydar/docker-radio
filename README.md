# docker-radio
Docker for radio station streaming

# Software

- Zeno.fm account it's free
    > You need a user and password otherwise if you use one that was provided on this code will not work as you expected.

- pavucontrol (Pulse Audio Volume Control) interchange audio output e.g Youtube & microphone, if you want to only send music over your microphone without external noise.

    > https://freedesktop.org/software/pulseaudio/pavucontrol/
    > sudo curl -O http://freedesktop.org/software/pulseaudio/pavucontrol/pavucontrol-3.0.tar.xz

- Butt (streming) optional

    > https://danielnoethen.de/butt/
    > https://danielnoethen.de/butt/manual.html
    > sudo curl -O https://sourceforge.net/projects/butt/files/butt/butt-0.1.30/butt-0.1.30.tar.gz/download 
    > sudo apt-get install libfltk1.3-dev portaudio19-dev libopus-dev libmp3lame-dev libvorbis-dev libogg-dev libflac-dev libfdk-aac-dev libdbus-1-dev libsamplerate0-dev libssl-dev


# Youtube Playlist
https://youtube.com/playlist?list=PLTbxS75uLtQgu7PAMtxDt0tTyuyOG8o9z

# Using ffmeg (Streming audio to zeno.fm)

    > ffmpeg -f alsa -i hw:0,0 -acodec libmp3lame -ab 32k -vn -c:a mp3 -b:a 64k -ar 44100 -legacy_icecast 1 -f mp3 icecast://source:HsDkgHYb@fluoz.zeno.fm:80/zwqxuffa5v8uv/source


# Issue

    > When run docker the follow erro  shows up:
    > cannot open audio device hw:0 (No such file or directory) hw:1: Input/output error