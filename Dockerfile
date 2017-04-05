FROM ubuntu:xenial 

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y \
    apt-utils

RUN apt-get install -y \
    build-essential \
    perl \
    python3 \
    python3-dev \
    python3-setuptools \
    python3-pip \
    net-tools \
    curl \
    sudo \
    nano

ENV DEBIAN_FRONTEND=teletype

RUN pip3 install --upgrade pip
RUN pip3 install Flask==0.12

WORKDIR /src
COPY . /src

CMD ["python3", "unh698.py"]
EXPOSE 5000

