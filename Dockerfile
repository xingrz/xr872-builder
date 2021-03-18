FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && \
    apt-get install -y build-essential

RUN apt-get install -y python3 git wget

RUN apt-get install -y gcc-multilib && \
    mkdir -p /root/tools && cd /root/tools && \
    wget https://launchpad.net/gcc-arm-embedded/4.9/4.9-2015-q2-update/+download/gcc-arm-none-eabi-4_9-2015q2-20150609-linux.tar.bz2 && \
    tar xvf gcc-arm-none-eabi-4_9-2015q2-20150609-linux.tar.bz2 && \
    rm -f gcc-arm-none-eabi-4_9-2015q2-20150609-linux.tar.bz2

VOLUME [ "/project" ]
WORKDIR /project
