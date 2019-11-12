FROM golang:alpine as builder

RUN apk --no-cache add make git
WORKDIR /src
RUN git clone https://github.com/lomik/carbon-clickhouse.git
RUN cd carbon-clickhouse && make
RUN cp /src/carbon-clickhouse/carbon-clickhouse /
RUN cd /src && rm -rf carbon-clickhouse

CMD /carbon-clickhouse -config /etc/carbon-clickhouse/carbon-clickhouse.conf
