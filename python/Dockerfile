FROM rounds/10m-build
MAINTAINER Ofir Petrushka

ENV PATH /opt/python/bin:/usr/local/bin:$PATH

# Install python with setuptools and pip (pip is the most commanly used package manager for python)
RUN \
  apt-get update && \
  apt-get install -y python python-setuptools python-pip && \
  rm -rf /var/lib/apt/lists/*
