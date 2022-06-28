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

# write topic
$ kafka-console-producer.sh --broker-list $(cat BrokersList.txt) --producer.config producer.properties --topic topic_name_here

# read topic
$ kafka-console-consumer.sh --bootstrap-server $(cat BrokersList.txt) --consumer.config producer.properties --topic topic_name_here --from-beginning

# delete topic
$ kafka-topics.sh --delete --zookeeper zookeeper_host:zookeeper_host_port --topic test_topic

# add partition
$ kafka-topics.sh --alter --zookeeper zookeeper_host:zookeeper_host_port --topic test_topic --partitions 3

# view topic config
$ kafka-configs.sh --describe --zookeeper zookeeper_host:zookeeper_host_port --entity-type topics --entity-name test_topic
