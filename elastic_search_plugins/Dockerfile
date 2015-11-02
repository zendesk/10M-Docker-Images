#
# Ubuntu Dockerfile
#
# https://github.com/dockerfile/ubuntu
#

# Pull base image.
FROM rounds/10m-elastic-search

# Install Elastic Search plugins.
RUN \
  /usr/share/elasticsearch/bin/plugin install royrusso/elasticsearch-HQ && \
  /usr/share/elasticsearch/bin/plugin install mobz/elasticsearch-head && \
  /usr/share/elasticsearch/bin/plugin install lmenezes/elasticsearch-kopf && \
# Issues with installing under ES 2.0 https://github.com/NLPchina/elasticsearch-sql/issues/106
#  /usr/share/elasticsearch/bin/plugin install https://github.com/NLPchina/elasticsearch-sql/releases/download/1.4.5/elasticsearch-sql-1.3.5.zip && \ 
  /usr/share/elasticsearch/bin/plugin install cloud-gce
