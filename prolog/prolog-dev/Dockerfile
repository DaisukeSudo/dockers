FROM ubuntu:16.04

RUN [ "/bin/bash", "-c", " \
    apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y gprolog \
"]
    
WORKDIR /home/prolog

CMD [ "prolog" ]
