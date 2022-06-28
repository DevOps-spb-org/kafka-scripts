#!/bin/bash
#
# Kafka topics create

ENV=nonprod

# 1: A name for the topic
# 2: A replication factor
# 3: A partition
KAFKA_TOPIC_LIST=(
  "MyKafkaTopic:3:1"
  "MyKafkaTopic2:3:1"
)

for topic in "${KAFKA_TOPIC_LIST[@]}"; do
  a_topic=$(echo "$topic" | cut -d ":" -f1)
  a_replication_factor=$(echo "$topic" | cut -d ":" -f2)
  a_partition=$(echo "$topic" | cut -d ":" -f3)

  kafka-topics.sh --create --zookeeper $(cat /opt/kafka_2.12-2.2.1/mskkafkatest-${ENV}_ZooKeeperList.txt) --topic $a_topic --replication-factor $a_replication_factor --partitions $a_partition
done
