FROM ubuntu:20.04

LABEL maintainer="Roman Nikov"

RUN apt update; \
    apt install -y wget; \
    wget https://cdn.filesend.jp/private/kPv_6kLosEppUybPNMShcQGg9SiHvHAljzc6509icxmAc8zyWr0mCu3MKeN2BccT/upscale.tar.gz; \
    tar xf upscale.tar.gz; \
    cd upscale; \
    cp config.json /usr/local/bin/config.json; \
    cp upscale /usr/local/bin/upscale; \
    cd /usr/local/bin;

WORKDIR /usr/local/bin

RUN chmod 777 config.json;

RUN chmod 777 upscale;

CMD upscale
