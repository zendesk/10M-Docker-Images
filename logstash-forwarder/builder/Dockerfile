# Image for building logstash-forwarder with all dependencies pre-installed

FROM rounds/10m-build
MAINTAINER Ofir Petrushka <ofir@rounds.com>

WORKDIR /tmp

# TODO: Make a Go, Ruby and Go + Ruby contrainers to inherit from.

# Install Go
RUN sudo add-apt-repository "deb http://archive.ubuntu.com/ubuntu $(lsb_release -sc) universe" && \
    sudo apt-get update
RUN sudo apt-get -y install golang

# Install ruby 2.1 for mustash depdency in Gemfile
#RUN apt-get install -y python-software-properties
RUN apt-add-repository ppa:brightbox/ruby-ng && \
    apt-get update
RUN apt-get install -y ruby2.1 ruby2.1-dev

RUN apt-get install -y bundler

# Install logstash-forwarder "Building it"
# https://github.com/elasticsearch/logstash-forwarder
RUN git clone git://github.com/elasticsearch/logstash-forwarder.git /tmp/logstash-forwarder
WORKDIR /tmp/logstash-forwarder
RUN bundle

VOLUME ["/build/"]
WORKDIR /build/

# Install logstash-forwarder "Building it"
# https://github.com/elasticsearch/logstash-forwarder
# "Packaging it"
# https://github.com/elasticsearch/logstash-forwarder
CMD cp -r /tmp/logstash-forwarder /build/logstash-forwarder && \
    cd logstash-forwarder && \
    git fetch && \
    bundle && \
    go build && \
    make deb && \
    rm /build/logstash-forwarder_*_amd64.deb && \
    cp logstash-forwarder_*_amd64.deb /build && \
    cd /tmp && \
    rm -rf /build/logstash-forwarder
