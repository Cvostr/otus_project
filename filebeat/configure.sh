#!/bin/bash

LOGSTASH_ADDR='192.168.0.42:5044'

sudo cp filebeat.yml /etc/filebeat/filebeat.yml
sudo sed -i "s/{LOGSTASH_ADDR}/$LOGSTASH_ADDR/" /etc/filebeat/filebeat.yml
