FROM python:3-slim

ADD requirements.txt .

RUN apt-get update -yqq && \
    apt-get install -yqq build-essential procps && \
    CFLAGS=-fcommon pip3 install -r requirements.txt

ADD . .

