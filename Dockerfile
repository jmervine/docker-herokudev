from heroku/cedar:14

env PHANTOMJS_VERSION 1.9.8

# build / dev deps not included in cedar:14
run \
    apt-get update && \
    apt-get install -y \
        vim \
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

# install heroku toolbelt
run \
    wget -qO- https://toolbelt.heroku.com/install.sh | \
      sed 's@sudo -k@#sudo -k@g' | sed 's@sudo sh@sh@g' | sh && \
    echo 'PATH="/usr/local/heroku/bin:$PATH"' >> /root/.bashrc

run mkdir /src
workdir /src

cmd /bin/bash
