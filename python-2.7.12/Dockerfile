# WARNING
# -------
# This file is dynamically generated, do not edit!
# See https://github.com/jmervine/imagend for generator details.
from jmervine/herokudev-base:heroku16
env PYTHON_VERSION 2.7.12
env DEBIAN_FRONTEND=noninteractive

run \
  (echo ${PYTHON_VERSION} | grep "^3" && \
    (mv /usr/bin/python /usr/bin/python2 && \
      ln -s /usr/bin/python3 /usr/bin/python)) || true
run mkdir -p /src
workdir /src

cmd /bin/bash
