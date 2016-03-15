FROM alpine:3.3
MAINTAINER Ory Band @ Rounds <ory@rounds.com>

# docker-gen and dockerize for configuration templates
ENV DOCKER_GEN_VERSION 0.4.3
ENV DOCKERIZE_VERSION v0.0.3

ENV DOCKER_GEN_FILE docker-gen-linux-amd64-$DOCKER_GEN_VERSION.tar.gz
ENV DOCKERIZE_FILE dockerize-linux-amd64-$DOCKERIZE_VERSION.tar.gz

ENV DOCKER_GEN_URL https://github.com/jwilder/docker-gen/releases/download/$DOCKER_GEN_VERSION/$DOCKER_GEN_FILE
ENV DOCKERIZE_URL https://github.com/jwilder/dockerize/releases/download/$DOCKERIZE_VERSION/$DOCKERIZE_FILE

RUN apk add -qu --no-cache --virtual .fetch-deps wget ca-certificates \
    && cd /tmp \
    && wget -q $DOCKER_GEN_URL $DOCKERIZE_URL \
    && tar -zxf $DOCKER_GEN_FILE -C /usr/local/bin \
    && tar -zxf $DOCKERIZE_FILE -C /usr/local/bin \
    && rm -f $DOCKER_GEN_FILE $DOCKERIZE_FILE \
    && cd - \
    && apk del -q .fetch-deps

# gosu for running as non-root
RUN apk add -qu --no-cache --virtual .fetch-deps curl dpkg \
    && curl -o /usr/local/bin/gosu -fsSL "https://github.com/tianon/gosu/releases/download/1.7/gosu-$(dpkg --print-architecture)" \
    && chmod +x /usr/local/bin/gosu \
    && apk del -q .fetch-deps
