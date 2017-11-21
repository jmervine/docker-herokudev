# WARNING
# -------
# This file is dynamically generated, do not edit!
# See https://github.com/jmervine/imagend for generator details.

from jmervine/herokudev-node:lts
env RUBY_VERSION 2.2.8

workdir /tmp
run \
    wget http://ftp.ruby-lang.org/pub/ruby/ruby-${RUBY_VERSION}.tar.gz && \
    tar -xzvf ruby-${RUBY_VERSION}.tar.gz && \
    cd ruby-${RUBY_VERSION} && \
    ./configure --with-readline && \
    make && \
    make install && \
    cd /tmp && \
    rm -rf ruby-${RUBY_VERSION}


run gem install bundler --no-ri --no-rdoc
run mkdir -p /src
workdir /src

cmd /bin/bash
