FROM ubuntu:xenial
MAINTAINER Nick Ramirez
EXPOSE 53
RUN apt update && apt install bind9 -y
RUN service bind9 stop
COPY ./named.conf ./named.conf.options ./named.conf.custom-zones /etc/bind/
ENTRYPOINT /usr/sbin/named -c /etc/bind/named.conf -g -4
