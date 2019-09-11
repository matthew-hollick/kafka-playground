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


Reference:
https://jakubbujny.com/2018/08/19/stream-microservices-logs-how-riemann-simplify-things/
https://github.com/pyr/riemann-kafka
https://github.com/deviantony/docker-elk
https://github.com/mosquito/graphite-clickhouse
and others that I have mislaid.

