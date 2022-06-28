#!/bin/bash
#
# Kafka topics delete

ENV=nonprod

KAFKA_TOPIC_LIST=(
  "MyKafkaTopic2"
  "test"
  "test2"
)

for topic in "${KAFKA_TOPIC_LIST[@]}"; do
  echo "Deleting ${topic} ....."
  kafka-topics.sh --delete --zookeeper $(cat ZooKeeperList.txt) -topic $topic
done
