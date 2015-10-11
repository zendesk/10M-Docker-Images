FROM rounds/10m-base
MAINTAINER Ofir Petrushka ROUNDS <ofir@rounds.com>

# Generic (should be in base images if this issue https://github.com/docker/docker/issues/3639 is ever resolved)
VOLUME ["/var/log"]

RUN wget -q http://repos.sensuapp.org/apt/pubkey.gpg -O- | apt-key add - && \
    echo "deb     http://repos.sensuapp.org/apt sensu main" > /etc/apt/sources.list.d/sensu.list && \
    apt-get update && \
    apt-get install -y sensu && \
    rm /etc/apt/sources.list.d/sensu.list && \
    apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

CMD /opt/sensu/bin/sensu-client -c /etc/sensu/config.json -d /etc/sensu -e /etc/sensu/extensions -v -l /var/log/sensu/client.log
