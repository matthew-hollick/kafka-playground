FROM alpine:3.10 AS builder

RUN wget https://github.com/grobian/carbon-c-relay/releases/download/v3.6/carbon-c-relay-3.6.tar.gz
RUN tar zxvf carbon-c-relay-3.6.tar.gz
RUN ls -lah

WORKDIR /carbon-c-relay-3.6

RUN \
  apk add --no-cache git bc build-base curl automake autoconf libtool wget && \
  ./configure && make

FROM alpine:3.10

RUN mkdir /etc/carbon-c-relay

COPY --from=builder /carbon-c-relay-3.6/relay /usr/bin/carbon-c-relay

EXPOSE 2003

ENTRYPOINT ["/usr/bin/carbon-c-relay", "-f", "/etc/carbon-c-relay/carbon-c-relay.conf"]

