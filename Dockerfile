from heroku/cedar:14

env PHANTOMJS_VERSION 1.9.8
env NODE_VERSION 4.1.0

# build / dev deps not included in cedar:14
run \
    apt-get update && \
    apt-get install -y \
        vim \
        libcurl3-dev \
        libffi-dev \
        libsqlite3-dev && \
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

# install node binary
# note: including node as a js runtime for ruby applications
run \
  curl -s http://nodejs.org/dist/v${NODE_VERSION}/node-v${NODE_VERSION}-linux-x64.tar.gz | \
  gunzip -c | tar -xf - -C /

# install heroku toolbelt
run \
    wget -qO- https://toolbelt.heroku.com/install.sh | \
      sed 's@sudo -k@#sudo -k@g' | sed 's@sudo sh@sh@g' | sh

env PATH /user/local/heroku/bin:/node-v${NODE_VERSION}-linux-x64/bin:$PATH

run mkdir /src
workdir /src

cmd /bin/bash
