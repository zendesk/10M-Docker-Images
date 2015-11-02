#
# Ubuntu Dockerfile
#
# https://github.com/dockerfile/ubuntu
#

# Pull base image.
FROM rounds/10m-java

# Install.
RUN \
  wget -qO - https://packages.elastic.co/GPG-KEY-elasticsearch | apt-key add - && \
  echo "deb http://packages.elastic.co/elasticsearch/2.x/debian stable main" | tee -a /etc/apt/sources.list.d/elasticsearch-2.x.list && \
  apt-get update && \
  apt-get install -y elasticsearch && \
  rm -rf /var/lib/apt/lists/*

# Define default command.
CMD ["/usr/share/elasticsearch/bin/elasticsearch"]
