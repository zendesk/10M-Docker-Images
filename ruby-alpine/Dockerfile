FROM ruby:2.3-alpine
MAINTAINER Ory Band @ Rounds <ory@rounds.com>

# dockerize for configuration templates
ENV DOCKERIZE_VERSION v0.0.3
ENV DOCKERIZE_FILE dockerize-linux-amd64-$DOCKERIZE_VERSION.tar.gz
ENV DOCKERIZE_URL https://github.com/jwilder/dockerize/releases/download/$DOCKERIZE_VERSION/$DOCKERIZE_FILE

RUN cd /tmp \
    && wget -q $DOCKERIZE_URL \
    && tar -zxf $DOCKERIZE_FILE -C /usr/local/bin \
    && rm $DOCKERIZE_FILE \
    && cd -
