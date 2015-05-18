FROM ubuntu:trusty

# Versions
ENV NODE_VERSION 0.10.38

# Install Binary of Node JS
# And Update NPM to latest version
RUN apt-get update -y \
 && apt-get install -y \
        curl \
        build-essential \
        python2.7 \
        libssl-dev \
 && apt-get clean \
 && wget http://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.gz \
 && tar -xzf node-v$NODE_VERSION-linux-x64.tar.gz -C /usr/local --strip-components=1 \
 && rm node-v$NODE_VERSION-linux-x64.tar.gz \
 && npm install -g npm \
 && npm cache clear
    
CMD ["bash"]
