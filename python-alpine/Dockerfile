FROM python:2.7-alpine
MAINTAINER Ory Band @ Rounds <ory@rounds.com>

# pip, virtualenv
# if this is called "PIP_VERSION", pip explodes with "ValueError: invalid truth value '<VERSION>'"
ENV PYTHON_PIP_VERSION 8.1.0
RUN pip install -q --no-cache-dir --upgrade \
        pip==$PYTHON_PIP_VERSION \
        virtualenv

# bash is necessary for sourcing virtualenvs
RUN apk add -qu --no-cache bash
RUN rm /bin/sh && ln -s /bin/bash /bin/sh

# docker-gen and dockerize for configuration templates
ENV DOCKER_GEN_VERSION 0.4.3
ENV DOCKERIZE_VERSION v0.0.3

ENV DOCKER_GEN_FILE docker-gen-linux-amd64-$DOCKER_GEN_VERSION.tar.gz
ENV DOCKERIZE_FILE dockerize-linux-amd64-$DOCKERIZE_VERSION.tar.gz

ENV DOCKER_GEN_URL https://github.com/jwilder/docker-gen/releases/download/$DOCKER_GEN_VERSION/$DOCKER_GEN_FILE
ENV DOCKERIZE_URL https://github.com/jwilder/dockerize/releases/download/$DOCKERIZE_VERSION/$DOCKERIZE_FILE

RUN cd /tmp \
    && wget -q $DOCKER_GEN_URL $DOCKERIZE_URL \
    && tar -zxf $DOCKER_GEN_FILE -C /usr/local/bin \
    && tar -zxf $DOCKERIZE_FILE -C /usr/local/bin \
    && rm $DOCKER_GEN_FILE $DOCKERIZE_FILE \
    && cd -

# gosu for running as non-root
RUN apk add -qu --no-cache dpkg \
    && curl -o /usr/local/bin/gosu -fsSL "https://github.com/tianon/gosu/releases/download/1.7/gosu-$(dpkg --print-architecture)" \
    && chmod +x /usr/local/bin/gosu \
    && apk del -q dpkg
