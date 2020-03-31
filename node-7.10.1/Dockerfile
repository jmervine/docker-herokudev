# WARNING
# -------
# This file is dynamically generated, do not edit!
# See https://github.com/jmervine/imagend for generator details.

from jmervine/herokudev-base:heroku16
env NODE_VERSION 7.10.1
env DEBIAN_FRONTEND=noninteractive


# install node binary
# note: including node as a js runtime for ruby applications
run \
  curl -s http://nodejs.org/dist/v${NODE_VERSION}/node-v${NODE_VERSION}-linux-x64.tar.gz | \
  gunzip -c | tar -xf - -C /


env PATH /node-v${NODE_VERSION}-linux-x64/bin:$PATH

run mkdir -p /src
workdir /src

cmd /bin/bash
