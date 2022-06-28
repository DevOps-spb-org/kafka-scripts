#!/bin/bash
#
# Kafka topics

# View topics
kafka-topics.sh --list --zookeeper zookeeper_host:zookeeper_host_port
# or
$ kafka-topics.sh --list --zookeeper $(cat ZooKeeperList.txt)

# get info about topic
$ kafka-topics.sh --describe --zookeeper zookeeper_host:zookeeper_host_port --topic test_topic

# create topic
$ kafka-topics.sh --create --zookeeper $(cat ZooKeeperList.txt) --topic test_topic --replication-factor 2 --partitions 3
