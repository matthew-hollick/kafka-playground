# Building containers for ECS

from the repository's root run:

docker build -t logstash_producer -f ecs/logstash-producer.Dockerfile .
docker build -t logstash_consumer -f ecs/logstash-consumer.Dockerfile .
