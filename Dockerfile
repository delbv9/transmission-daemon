FROM ubuntu:14.04
MAINTAINER wbouzane <williambouzane@gmail.com>

RUN echo "deb http://ppa.launchpad.net/transmissionbt/ppa/ubuntu trusty main" >> /etc/apt/sources.list

RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 365C5CA1

RUN apt-get update -q

RUN apt-get install -qy transmission-daemon supervisor

RUN mkdir -p /var/run/transmission-daemon /var/log/supervisor

ADD supervisord.conf /etc/supervisor/conf.d/supervisord.conf

ADD settings.json /etc/transmission-daemon/settings.json

EXPOSE 9091

CMD ["/usr/bin/supervisord"]
