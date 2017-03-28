FROM ubuntu:xenial 

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y \
    apt-utils

RUN apt-get install -y \
    build-essential \
    perl \
    python3 \
    python3-pip 

WORKDIR /src
COPY . /src

RUN pip3 install --upgrade pip

RUN pip3 install Flask==0.12

