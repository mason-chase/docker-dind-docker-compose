FROM docker:19-dind
RUN apk add python3 python3-dev py-pip build-base libffi-dev openssl-dev rust cargo
RUN pip3 install --upgrade pip
RUN pip3 install docker-compose
RUN docker-compose --version
  