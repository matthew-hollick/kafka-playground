#!/bin/bash

LOGHOST=${LOGHOST:-localhost}
INTERVAL=${LOGINTERVAL:-0.1}
SYSLOGPORT=${SYSLOGPORT:-5001}

while true; do
  LOGLINE=$(shuf -n1 ./logfile)
  logger -n $LOGHOST -P $SYSLOGPORT -T ${LOGLINE}
  sleep $LOGINTERVAL
done
