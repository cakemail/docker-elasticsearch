# docker-elasticsearch

### Motivation

Having an up-to-date ElasticSearch base container for the usage with Apache Mesos / Marathon (see [ElasticSearch-Marathon](https://github.com/tobilg/docker-elasticsearch-marathon)). It can also be used as stand-alone container. 

### Information

The image builds on `java:openjdk-7-jre` and the latest ElasticSearch binaries. The `/data` and `/logs` folders are exposed as volumes. This can be changed by editing the `elasticsearch.yml` file.
