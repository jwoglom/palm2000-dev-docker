FROM ubuntu:20.04

RUN dpkg --add-architecture i386
RUN apt-get update
RUN apt-get install -y make build-essential libxext6:i386 unzip wget

RUN wget https://palm2000.com/storage/files/17-file-palmdev_V3.zip -O /17-file-palmdev_V3.zip
RUN unzip /17-file-palmdev_V3.zip -d /
RUN rm -f /palmdev_V3/src/helloWorld.rcp
RUN rm -f /palmdev_V3/src/helloWorld.c
ADD replace/Makefile /palmdev_V3/Makefile
RUN rm /17-file-palmdev_V3.zip

WORKDIR /palmdev_V3
ENTRYPOINT ["/bin/bash"]