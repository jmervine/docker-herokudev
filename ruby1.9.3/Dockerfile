from jmervine/herokudev:cedar14

# cedar14 has 1.9.3 installed

# install bundler
run \
    echo "gem: --no-rdoc --no-ri" >> /root/.gemrc && \
    gem install bundler

workdir /src
cmd /bin/bash
