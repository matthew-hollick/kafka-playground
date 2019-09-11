Working on:

```
collectd -> kafka -> thing -> carbon-clickhouse -> clickhouse -> graphite-clickhouse -> carbonapi -> grafana
```
where currently "thing" is Riemann but this might change. Fluentd might be an
option

and:

```
logstash -> kafka -> logstash -> elk
```
But because I am playing at this point Riemann is used to pull from kafka and
push into elasticsearch

If you use docker-machine please set the environmental variable `DOCKER_HOST_IP`
to the IP address of the docker host as shown by running `docker-machine env`

Reference:
https://jakubbujny.com/2018/08/19/stream-microservices-logs-how-riemann-simplify-things/
https://github.com/pyr/riemann-kafka
https://github.com/deviantony/docker-elk
https://github.com/mosquito/graphite-clickhouse
and others that I have mislaid.

