FROM ubuntu:bionic

RUN apt-get update && apt-get install -y \
 vim \
 iproute2 \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*
