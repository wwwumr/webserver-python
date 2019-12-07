FROM ubuntu:18.04

RUN sed -i s@/archive.ubuntu.com/@/mirrors.aliyun.com/@g /etc/apt/sources.list && \
    apt-get clean && \
    apt-get -y -q update && \
    apt-get install -y python3 python3-pip vim git && \
    pip3 install Flask && \
    useradd -ms /bin/bash user

USER user

WORKDIR /home/user