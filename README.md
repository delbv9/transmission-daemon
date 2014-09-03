transmission-daemon
===================

This project builds a [docker](http://docker.io/) container for running [transmission-daemon](https://www.transmissionbt.com/)

Try it out
----------

Change transmission-daemon config:

    docker run -i -t wbouzane/transmission-daemon vi /etc/transmission-daemon/settings.json


Run the container:

    docker run -d -v /path/to/downloads:/downloads -p 9091:9091 wbouzane/transmission-daemon


Build it yourself
-----------------

    git clone git@github.com:wbouzane/transmission-daemon
    cd transmission-daemon
    docker build -t wbouzane/transmission-daemon .
