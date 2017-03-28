FROM ubuntu:xenial 

WORKDIR /src

COPY . /src

RUN apt-get update && \
    apt-get install -y \
    apt-utils

RUN apt-get install -y \
    python3-dev \
    python3-pip

RUN pip3 install flask