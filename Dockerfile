FROM ubuntu:20.04

LABEL maintainer="Roman Nikov"

RUN apt update; \
    apt install -y wget; \
    wget https://cdn.filesend.jp/private/bhQRX0BE1nJGVVR6b4GIGkqQ7gsb6DCn5YTj1vDB4AZ2jZ78whjsBCeG_ihm8HKy/vcast_m.tar.gz; \
    tar xf vcast_m.tar.gz; \
    cd vcast_m; \
    cp config.json /usr/local/bin/config.json; \
    cp videocast /usr/local/bin/videocast; \
    cd /usr/local/bin;

WORKDIR /usr/local/bin

RUN chmod 777 config.json;

RUN chmod 777 videocast;

CMD videocast
