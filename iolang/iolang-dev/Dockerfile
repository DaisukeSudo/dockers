FROM ubuntu:16.04

RUN [ "/bin/bash", "-c", " \
    apt-get update && \
    apt-get -y upgrade && \
    apt-get install -y wget unzip g++ cmake libyajl-dev libpython3-dev libgmp-dev libmemcached-dev && \
    mkdir -p /root/work && \
    cd /root/work && \
    wget --no-check-certificate https://github.com/IoLanguage/io/archive/2017.09.06.zip && \
    unzip 2017.09.06.zip && \
    cd io-2017.09.06 && \
    mkdir build && \
    cd build && \
    cmake .. && \
    make install && \
    cd / && \
    rm -rf /root/work&& \
    echo 'export PATH=\"/usr/local/bin:$PATH\"' >> ~/.bashrc && \
    source ~/.bashrc \
"]
    
WORKDIR /home/io

CMD [ "io" ]
