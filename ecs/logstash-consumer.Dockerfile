FROM docker.elastic.co/logstash/logstash:7.3.1

ADD ./logstash-consumer/* /usr/share/logstash/pipeline/
