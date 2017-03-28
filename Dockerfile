FROM ubuntu:xenial 

WORKDIR /app
COPY . /app

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y --no-install-recommends \
    apt-utils \
    build-essential \
    perl \
    python3-dev \
    python3 \
    python3-pip 

RUN pip3 install --upgrade pip

RUN pip3 install -r requirements.txt

ENTRYPOINT ["python3"]
CMD ["app.py"]
