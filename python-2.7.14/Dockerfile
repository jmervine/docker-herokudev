# WARNING
# -------
# This file is dynamically generated, do not edit!
# See https://github.com/jmervine/imagend for generator details.
from jmervine/herokudev-base:heroku16
env PYTHON_VERSION 2.7.14

# currently only supports native
# TODO: include support for building additional python versions.
workdir /tmp
run \
  wget https://www.python.org/ftp/python/${PYTHON_VERSION}/Python-${PYTHON_VERSION}.tgz && \
    tar -xzvf Python-${PYTHON_VERSION}.tgz && \
    cd Python-${PYTHON_VERSION} && \
    ./configure && \
    make && \
    make install && \
    cd /tmp && \
    rm -rf Python-${PYTHON_VERSION}

run \
  (echo ${PYTHON_VERSION} | grep "^3" && \
    (mv /usr/bin/python /usr/bin/python2 && \
      rm /usr/bin/python3 && \
      ln -s $(which python3) /usr/bin/python)) || true
run mkdir -p /src
workdir /src

cmd /bin/bash
