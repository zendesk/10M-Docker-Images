FROM ubuntu:vivid
MAINTAINER Ofir Petrushka @ Rounds <ofir@rounds.com>, Ory Band @ Rounds <ory@rounds.com>

# Solves some issues and many messages in apt-get install
ENV DEBIAN_FRONTEND noninteractive

# The cleanup presented here is repeated in many places that use apt-get install. This is used to have the cleanes image possible.
# Pilling many commands into one RUN is used to relate to the same FS layer. (otherwise each command is done in a seperate FS which makes you write the file in one layer and delete it in another...)
# wget and curl are something we expect in many scripts, makes sense to always have them.
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y wget curl && \
    apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# install docker-gen and dockerize
# NOTE that docker-gen requires mounting the docker api socket, READ-ONLY mode:
# docker run -v /var/run/docker.sock:/tmp/docker.sock:ro ...
ENV DOCKER_GEN_VERSION 0.4.3
ENV DOCKERIZE_VERSION v0.0.3

ENV DOCKER_GEN_FILE docker-gen-linux-amd64-$DOCKER_GEN_VERSION.tar.gz
ENV DOCKERIZE_FILE dockerize-linux-amd64-$DOCKERIZE_VERSION.tar.gz

ENV DOCKER_GEN_URL https://github.com/jwilder/docker-gen/releases/download/$DOCKER_GEN_VERSION/$DOCKER_GEN_FILE
ENV DOCKERIZE_URL https://github.com/jwilder/dockerize/releases/download/$DOCKERIZE_VERSION/$DOCKERIZE_FILE

RUN wget $DOCKER_GEN_URL $DOCKERIZE_URL && \
    tar -C /usr/local/bin -xvzf $DOCKER_GEN_FILE && tar -C /usr/local/bin -xvzf $DOCKERIZE_FILE && \
    rm $DOCKER_GEN_FILE $DOCKERIZE_FILE

# We do want to treat logs the same in all of our images.
#VOLUME ["/var/log"] # sucks to do it so early, open issue https://github.com/docker/docker/issues/3639 volume is non-mutable between Dockerfile instruction
