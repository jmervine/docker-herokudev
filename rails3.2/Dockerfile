from jmervine/herokudev-ruby:1.9.3

env RAILS_VERSION 3.2.19

# install bundler
run \
    gem install rails -v "${RAILS_VERSION}" && \
    gem install haml-rails

workdir /src

cmd /bin/bash
