#!/bin/sh
set -x
set -e

case "$1" in
    client)
        APP="client"
        ;;
    server)
        APP="server"
        ;;
    api)
        APP="api"
        ;;
    *)
        echo "Usage: $0 {client|server|api}"
        exit 1
esac

# parse configuration templates
for tmpl in /etc/sensu/conf.d/*.tmpl; do dockerize -template $tmpl:${tmpl%%.tmpl} true; done

# wait for rabbitmq, redis to be ready
until $(nc -z $SENSU_RABBITMQ_HOST $SENSU_RABBITMQ_PORT); do sleep 1; done
# redis only for server, api
if [ "$APP" != "client" ]; then until $(nc -z $SENSU_REDIS_HOST $SENSU_REDIS_PORT); do sleep 1; done; fi

# sensu
bundle exec sensu-$APP \
    -d /etc/sensu/conf.d \
    -l $SENSU_LOG_FILE \
    -L $SENSU_LOG_LEVEL
