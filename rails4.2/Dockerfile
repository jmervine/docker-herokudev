from jmervine/herokudev-ruby:2.2.1

env RAILS_VERSION 4.2.1

# install bundler
run \
    gem install rails -v "${RAILS_VERSION}" && \
    gem install haml-rails

workdir /src

cmd /bin/bash
