FROM ubuntu

RUN apt-get update        &&\
    apt-get -y upgrade    &&\
    apt-get install -y collectd collectd-utils

CMD collectd -f
