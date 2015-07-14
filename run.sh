#!/bin/sh

# Set configuration
sed -i "/elasticsearch_url: / s/:.*/: \"http:\/\/$ES_HOST:$ES_PORT\/\"/g" \
  ./kibana/config/kibana.yml

# Start
./kibana/bin/kibana

