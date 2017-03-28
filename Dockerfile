FROM ubuntu:xenial 

WORKDIR /src
COPY . /src

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y \
    apt-utils \
    build-essential \
    perl \
    python3 \
    python3-dev \
    python3-setuptools \
    python3-pip 

ENV DEBIAN_FRONTEND teletype

RUN pip3 install --upgrade pip

RUN pip3 install -r requirements.txt

#ENTRYPOINT ["python3"]
#CMD ["unh698_test.py"]

