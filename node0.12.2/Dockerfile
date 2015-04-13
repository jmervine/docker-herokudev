from jmervine/herokudev:cedar14

env NODE_VERSION 0.12.2

# install node binary
run \
  curl -s http://nodejs.org/dist/v${NODE_VERSION}/node-v${NODE_VERSION}-linux-x64.tar.gz | \
  gunzip -c | tar -xf - -C /

env PATH /node-v$image-linux-x64/bin:$PATH

workdir /src
cmd /bin/bash
