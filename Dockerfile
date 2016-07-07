# Elasticsearch 1.7.1
FROM java:openjdk-7-jre
MAINTAINER tobilg <fb.tools.github@gmail.com>

ONBUILD apt-get -yqq update && apt-get upgrade -yqq

ENV ES_VERSION 2.3.2

# download and unpack elasticsearch
RUN wget -q https://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-$ES_VERSION.tar.gz -O - | tar zxvf - && \
    mv /elasticsearch-$ES_VERSION /elasticsearch && \
    rm /elasticsearch/bin/*.exe

ADD elasticsearch.yml /elasticsearch/config/elasticsearch.yml

VOLUME ["/data", "/logs"]

EXPOSE 9200 9300
CMD ["elasticsearch/bin/elasticsearch"]
