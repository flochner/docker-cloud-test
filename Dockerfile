FROM ubuntu:xenial 

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y \
    apt-utils \
    build-essential \
    perl \
    python3 \
    python3-dev \
    python3-setuptools \
    python3-pip 

ENV DEBIAN_FRONTEND=teletype

RUN pip3 install --upgrade pip
RUN pip3 install Flask==0.12

WORKDIR /src
COPY . /src
EXPOSE 5000

