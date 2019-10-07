First build a couple of containers
```
docker-compose -f docker-compose-logs.yml build
```

Then Metrics work:

```
docker-compose -f docker-compose-metrics.yml up
```
Expect loads of errors as it gets running.
Then you have:
```
collectd -> riemann -> kafka -> riemann -> carbon-clickhouse -> clickhouse -> graphite-clickhouse -> carbonapi -> grafana
```
```
haggar -> riemann -> kafka -> riemann -> carbon-clickhouse -> clickhouse -> graphite-clickhouse -> carbonapi -> grafana
```
Grafana is available on port 3000

Logs kind of work:

```
docker-compose -f docker-compose-logs.yml up
```
Expect loads of errors as it gets running.
Then you have:
```
logger -> logstash -> kafka -> logstash -> elasticsearch -> kibana
```
Kibana is available on port 5601

Log formatting is all screwed up..

Reference:

https://jakubbujny.com/2018/08/19/stream-microservices-logs-how-riemann-simplify-things/

https://github.com/pyr/riemann-kafka

https://github.com/deviantony/docker-elk

https://github.com/mosquito/graphite-clickhouse

and others that I have mislaid.
