FROM docker.elastic.co/logstash/logstash:7.3.1

ADD ./logstash-producer/* /usr/share/logstash/pipeline/


