#!/bin/bash
#
# Kafka install

$ KAFKA_VERSION=2.12-2.2.1 &&
  wget -q -O - https://www-us.apache.org/dist/kafka/2.2.1/kafka_${KAFKA_VERSION}.tgz | (
    cd /opt
    tar -zxvf -
  ) && cd /opt/kafka_${KAFKA_VERSION}
