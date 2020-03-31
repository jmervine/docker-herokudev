# WARNING
# -------
# This file is dynamically generated, do not edit!
# See https://github.com/jmervine/imagend for generator details.

from jmervine/herokudev-node:lts
env RUBY_VERSION 2.4.9
env RUBY_INSTALL_VERSION 0.6.1
env DEBIAN_FRONTEND=noninteractive


workdir /tmp

run \
    apt-get update && \
    apt-get install -y libyaml-dev libxml2-dev libssl1.0-dev libreadline-dev zlib1g zlib1g-dev libbison-dev libxslt1-dev libxml2-dev && \
    wget -O ruby-install-${RUBY_INSTALL_VERSION}.tar.gz https://github.com/postmodern/ruby-install/archive/v${RUBY_INSTALL_VERSION}.tar.gz && \
    tar -xzvf ruby-install-${RUBY_INSTALL_VERSION}.tar.gz && \
    cd ruby-install-${RUBY_INSTALL_VERSION}/ && \
    make install && \
    rm -rf ruby-install-${RUBY_INSTALL_VERSION}.tar.gz ruby-install-${RUBY_INSTALL_VERSION}/ && \
    ruby-install --system ruby --no-install-deps ${RUBY_VERSION} && \
    apt-get autoremove -y && \
    apt-get clean all && \
    apt-get purge -y && \
    rm -rf /var/lib/apt/lists/*

# run \
#     wget http://ftp.ruby-lang.org/pub/ruby/ruby-${RUBY_VERSION}.tar.gz && \
#     tar -xzvf ruby-${RUBY_VERSION}.tar.gz && \
#     cd ruby-${RUBY_VERSION} && \
#     ./configure --with-readline && \
#     make && \
#     make install && \
#     cd /tmp && \
#     rm -rf ruby-${RUBY_VERSION}


run gem install bundler --no-ri --no-rdoc
run mkdir -p /src
workdir /src

cmd /bin/bash
