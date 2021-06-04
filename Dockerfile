FROM ubuntu:18.04
RUN apt-get update
RUN apt-get -qq -y install curl
RUN apt-get install -y ffmpeg


#Stream Encoder Settings / get it from zeno.fm console
ENV ZENOFM_USER=source
ENV ZENOFM_PASSWORD=HsDkgHYb
ENV ZENOFM_SERVER=fluoz.zeno.fm
ENV ZENOFM_PORT=80
ENV ZENOFM_MOUNTPOINT=zwqxuffa5v8uv/source
ENV ZENOFM_URL=icecast://${ZENOFM_USER}:${ZENOFM_PASSWORD}@${ZENOFM_SERVER}:${ZENOFM_PORT}/${ZENOFM_MOUNTPOINT}

#Command for streaming form microphone
#ENTRYPOINT [ "/usr/bin/ffmpeg" "-f" "alsa" "-i" "hw:0" "-acodec" "libmp3lame" "-ab" "32k" "-vn" "-c:a" "mp3" "-b:a" "64k" "-ar" "44100" "-legacy_icecast" "1" "-f" "mp3"]
ENTRYPOINT [ "/usr/bin/ffmpeg"]
#CMD [ "${ZENOFM_URL}"]
#ffmpeg -f alsa -i hw:0,0 -acodec libmp3lame -ab 32k -vn -c:a mp3 -b:a 64k -ar 44100 -legacy_icecast 1 -f mp3 icecast://source:HsDkgHYb@fluoz.zeno.fm:80/zwqxuffa5v8uv/source