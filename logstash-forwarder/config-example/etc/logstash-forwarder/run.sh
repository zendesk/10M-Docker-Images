#!/bin/bash
/opt/logstash-forwarder/bin/logstash-forwarder -config /etc/logstash-forwarder/logstash-forwarder-config.json -spool-size 100
