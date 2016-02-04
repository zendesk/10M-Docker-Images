FROM zendesk/10m-base
MAINTAINER Ory Band @ Rounds <ory@rounds.com>

# install python, setuptools, pip
RUN \
  apt-get update && \
  apt-get install -y python python-setuptools python-pip && \
  pip install --upgrade pip && \
  apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
