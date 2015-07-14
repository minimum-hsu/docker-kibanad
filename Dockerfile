FROM ubuntu:14.04.2

MAINTAINER minimum@cepave.com

# Install Kibana
WORKDIR /root
RUN \
  apt-get install -y curl && \
  mkdir kibana && \
  (curl https://download.elastic.co/kibana/kibana/kibana-4.1.1-linux-x64.tar.gz | \
    tar xz -C kibana --strip-components 1) && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Metadata
LABEL "Kibana.version"="4.1.1" "Kibana.os"="linux x64"

# Port
EXPOSE 5601

# Environment
ENV ES_HOST=localhost ES_PORT=9200

# Run Elasticsearch Service
COPY run.sh ./
RUN chmod +x run.sh
CMD ["./run.sh"]
