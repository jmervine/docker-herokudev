# WARNING
# -------
# This file is dynamically generated, do not edit!
# See https://github.com/jmervine/imagend for generator details.

from heroku/heroku:16

env PHANTOMJS_VERSION 2.1.1
env DEBIAN_FRONTEND=noninteractive

run \
    apt-get update && \
    apt-get install -y \
        build-essential \
        zlib1g-dev \
        libssl-dev \
        vim \
        libcurl3-dev \
        libffi-dev \
        postgresql-client \
        libpq-dev \
        libsqlite3-dev \
        libreadline-dev && \
    apt-get autoremove -y && \
    apt-get clean all && \
    apt-get purge -y && \
    rm -rf /var/lib/apt/lists/*

# install phantomjs
run \
    mkdir -p /srv/var && \
    wget -q --no-check-certificate -O \
      /tmp/phantomjs-${PHANTOMJS_VERSION}-linux-x86_64.tar.bz2 \
      https://bitbucket.org/ariya/phantomjs/downloads/phantomjs-${PHANTOMJS_VERSION}-linux-x86_64.tar.bz2 && \
    tar -xjf /tmp/phantomjs-${PHANTOMJS_VERSION}-linux-x86_64.tar.bz2 -C /tmp && \
    rm -f /tmp/phantomjs-${PHANTOMJS_VERSION}-linux-x86_64.tar.bz2 && \
    mv /tmp/phantomjs-${PHANTOMJS_VERSION}-linux-x86_64/ /srv/var/phantomjs && \
    ln -s /srv/var/phantomjs/bin/phantomjs /usr/bin/phantomjs

# install heroku toolbelt
run \
    wget -qO- https://toolbelt.heroku.com/install.sh | \
      sed 's@sudo -k@#sudo -k@g' | sed 's@sudo sh@sh@g' | sh

env PATH /user/local/heroku/bin:$PATH

# install version check
run \
    echo "heroku16" > /etc/herokudev-base

run mkdir -p /src
workdir /src

cmd /bin/bash
