FROM ubuntu:xenial 

WORKDIR /app
COPY . /app

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

RUN pip3 install --upgrade pip

RUN pip3 install -r requirements.txt

ENTRYPOINT ["python3"]
CMD ["app.py"]

ENV DEBIAN_FRONTEND=newt
