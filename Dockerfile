FROM ubuntu:18.04
RUN apt-get update
RUN apt-get -qq -y install curl
RUN apt-get install -y \
    libfltk1.3-dev \
    portaudio19-dev \
    libopus-dev \
    libmp3lame-dev \
    libvorbis-dev \
    libogg-dev \
    libflac-dev \
    libfdk-aac-dev \
    libdbus-1-dev \
    libsamplerate0-dev \
    libssl-dev

ENV DIR=/tmp
ENV BUTTVERSION=butt-0.1.30
ENV FILEBUTT=$BUTTVERSION.tar.gz
RUN curl -L https://sourceforge.net/projects/butt/files/butt/${BUTTVERSION}/${FILEBUTT}/download -o $DIR/$FILEBUTT
RUN tar -zxf $DIR/$FILEBUTT -C $DIR

WORKDIR $DIR/$BUTTVERSION
RUN ./configure \ 
    && make \
    && make install
