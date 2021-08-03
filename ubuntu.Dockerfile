FROM ubuntu:18.04
LABEL "author" "public@masonian.com"

# Let's start with some basic stuff.
RUN apt-get update -qq
RUN apt-get install -qqy \
    apt-transport-https \
    ca-certificates \
    curl \
    wget \
    lxc \
    iptables
    
# Install Docker from Docker Inc. repositories.
RUN curl -sSL https://get.docker.com/ | sh

RUN wget `curl --head --silent --write-out "%{redirect_url}\n" --output /dev/null "https://github.com/docker/compose/releases/latest"| sed -e 's/\/tag\//\/download\//'`/docker-compose-`uname -s`-`uname -m` -O /usr/local/bin/docker-compose

RUN chmod +x /usr/local/bin/docker-compose
RUN docker-compose --version