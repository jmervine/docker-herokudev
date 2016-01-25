from jmervine/herokudev:latest

env RUBY_MAJOR 2.2
env RUBY_VERSION ${RUBY_MAJOR}.4

# install ruby
workdir /tmp
run \
    wget http://ftp.ruby-lang.org/pub/ruby/${RUBY_MAJOR}/ruby-${RUBY_VERSION}.tar.gz && \
    tar -xzvf ruby-${RUBY_VERSION}.tar.gz && \
    cd ruby-${RUBY_VERSION} && \
    ./configure && \
    make && \
    make install && \
    cd /tmp && \
    rm -rf ruby-${RUBY_VERSION}


# install bundler
run \
    echo "gem: --no-rdoc --no-ri" >> /root/.gemrc && \
    gem install bundler

workdir /src
cmd /bin/bash
