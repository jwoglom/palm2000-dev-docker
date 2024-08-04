FROM ubuntu:20.04

RUN mkdir -p /workdir
RUN dpkg --add-architecture i386
RUN apt-get update
RUN apt-get install -y make build-essential libxext6:i386 unzip wget

RUN wget https://palm2000.com/storage/files/17-file-palmdev_V3.zip -O /17-file-palmdev_V3.zip
RUN unzip /17-file-palmdev_V3.zip -d /workdir
RUN rm -f /workdir/src/helloWorld.rcp
RUN rm -f /workdir/src/helloWorld.c
ADD replace/Makefile /workdir/Makefile
RUN rm /17-file-palmdev_V3.zip

WORKDIR /workdir
ENTRYPOINT ["/bin/bash"]