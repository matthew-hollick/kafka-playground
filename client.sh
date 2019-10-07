#!/bin/sh

docker-compose -f docker-compose-metrics.yml exec clickhouse bash -c "
    export HOME=/var/lib/clickhouse/
    exec clickhouse client
"
