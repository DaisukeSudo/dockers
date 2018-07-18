FROM ubuntu:16.04

RUN [ "/bin/bash", "-c", " \
    apt-get update && \
    apt-get -y upgrade && \
    apt-get install -y gprolog \
"]
    
WORKDIR /home/prolog

CMD [ "io" ]
