FROM ubuntu:vivid
MAINTAINER Ofir Petrushka @ Rounds <ofir@rounds.com>, Ory Band @ Rounds <ory@rounds.com>

# Solves some issues and many messages in apt-get install
ENV DEBIAN_FRONTEND noninteractive

# install docker-gen
# to use you must mount the docker api socket, READ-ONLY mode:
# docker run -v /var/run/docker.sock:/tmp/docker.sock:ro ...

# TODO automatically download the latest release via github api
ENV DOCKER_GEN_VERSION 0.4.3
RUN wget https://github.com/jwilder/docker-gen/releases/download/$DOCKER_GEN_VERSION/docker-gen-linux-amd64-$DOCKER_GEN_VERSION.tar.gz && \
    tar -C /usr/local/bin -xvzf docker-gen-linux-amd64-$DOCKER_GEN_VERSION.tar.gz && \
    rm /docker-gen-linux-amd64-$DOCKER_GEN_VERSION.tar.gz

# The cleanup presented here is repeated in many places that use apt-get install. This is used to have the cleanes image possible.
# Pilling many commands into one RUN is used to relate to the same FS layer. (otherwise each command is done in a seperate FS which makes you write the file in one layer and delete it in another...)
# wget and curl are something we expect in many scripts, makes sense to always have them.
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y wget curl && \
    apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# We do want to treat logs the same in all of our images.
#VOLUME ["/var/log"] # sucks to do it so early, open issue https://github.com/docker/docker/issues/3639 volume is non-mutable between Dockerfile instruction
