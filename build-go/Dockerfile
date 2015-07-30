# Image for building software created in the GO programming language. 

FROM rounds/10m-build
MAINTAINER Ofir Petrushka <ofir@rounds.com>

WORKDIR /tmp

# Install Go
RUN sudo add-apt-repository "deb http://archive.ubuntu.com/ubuntu $(lsb_release -sc) universe" && \
    sudo apt-get update
RUN sudo apt-get -y install golang

# Default $GOPATH
RUN mkdir /root/go
ENV GOPATH "/root/go"
