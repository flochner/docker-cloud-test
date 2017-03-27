FROM ubuntu:xenial 

WORKDIR /src

COPY . /src

RUN apt-get update
RUN apt-get install -y python3
