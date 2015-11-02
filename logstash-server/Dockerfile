FROM rounds/10m-java
MAINTAINER Ofir Petrushka ROUNDS <ofir@rounds.com>

# Generic (should be in base images if this issue https://github.com/docker/docker/issues/3639 is ever resolved)
VOLUME ["/var/log"]

RUN wget -O - http://packages.elasticsearch.org/GPG-KEY-elasticsearch | apt-key add - && \
    echo "deb http://packages.elasticsearch.org/logstash/2.0/debian stable main" > /etc/apt/sources.list.d/elasticsearch.list && \
    apt-get update && \
    apt-get install logstash && \
    apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* && \
    sed --in-place=.orig 's/.err\" &$/.err\"/g' /etc/init.d/logstash
# The sed makes the init.d non demonized, so it can be used by docker (script contains a lot of env exports... comes with logstash install)

# Install plugins
  # doing in receiver / processor images, setup dependent

# Define default command.
CMD [/etc/init.d/logstash start]
