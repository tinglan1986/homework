sudo wget http://mirror.cogentco.com/pub/apache/kafka/1.0.1/kafka_2.11-1.0.1.tgz

tar -xzf kafka_2.11-1.0.1.tgz

cd kafka_2.11-1.0.1

sudo apt-get update

sudo apt-get install default-jre

sudo apt-get install zookeeperd

bin/zookeeper-server-start.sh config/zookeeper.properties

bin/kafka-server-start.sh config/server.properties

bin/kafka-topics.sh --create --zookeeper localhost:2181 --replication-factor 1 --partitions 1 --topic test

bin/kafka-topics.sh --list --zookeeper localhost:2181
test

bin/kafka-console-producer.sh --broker-list localhost:9092 --topic test
This is a message
This is another message

> bin/kafka-console-consumer.sh --bootstrap-server localhost:9092 --topic test --from-beginning
This is a message
This is another message

