FROM nvcr.io/nvidia/tensorrt:20.09-py3

# Set the env variable DEBIAN_FRONTEND to noninteractive
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -y && \
    apt-get upgrade -y && \
    apt-get dist-upgrade -y && \
    apt-get clean

ADD . /source

WORKDIR /source
RUN pip3 install -r requirements.txt
