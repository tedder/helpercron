FROM phusion/baseimage:latest

ENV DEBIAN_FRONTEND=noninteractive LANG=en_US.UTF-8
RUN apt update && \
  apt install -y python3-minimal python3-pip git vim-tiny \
    libffi-dev build-essential run-one telnet bzip2 jq && \
  pip3 install --force --upgrade pip && \
  ssh-keyscan github.com

RUN git clone --depth 1 --recurse-submodules \
    https://github.com/tedder/helpercron.git /opt/app/ && \
  pip3 install --force --upgrade -r /opt/app/requirements.txt
