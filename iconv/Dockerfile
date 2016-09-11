FROM cnsa/ubuntu:0.9.18
MAINTAINER Alexander Merkulov @merqlove

ENV REFRESHED_AT 2016-09-11

WORKDIR /tmp

# See : https://github.com/phusion/baseimage-docker/issues/58
RUN echo 'debconf debconf/frontend select Noninteractive' | debconf-set-selections

RUN apt-get update -qq > /dev/null 2>&1 && \
    apt-get install -qqy imagemagick libtool unzip wget build-essential > /dev/null 2>&1 && \
    wget -q https://gist.githubusercontent.com/merqlove/eda0bd9511fce0d319e6efb152f8c68d/raw/aab4e897a6233b38c4252a9ca8db2641aad50874/iconv_install_ubuntu14.sh && \
    chmod +x iconv_install_ubuntu14.sh > /dev/null 2>&1 && \
    ./iconv_install_ubuntu14.sh && \
    rm -f ./iconv_install_ubuntu14.sh && \
    apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

WORKDIR /
