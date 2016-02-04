#
# Ubuntu Dockerfile
#
# https://github.com/dockerfile/ubuntu
#

# Pull base image.
FROM zendesk/10m-java

# Install.
RUN \
  wget -qO - https://packages.elastic.co/GPG-KEY-elasticsearch | apt-key add - && \
  echo "deb http://packages.elastic.co/elasticsearch/1.5/debian stable main" | tee -a /etc/apt/sources.list && \
  apt-get update && \
  apt-get install -y elasticsearch && \
  rm -rf /var/lib/apt/lists/*

# Define default command.
CMD ["/usr/share/elasticsearch/bin/elasticsearch"]
