FROM python:3.8

ENV PYTHONUNBUFFERED 1

RUN mkdir /filetest

WORKDIR /filetest

COPY . /filetest/

RUN apt-get update && apt-get -y install gcc

RUN pip install -r requirements.txt

EXPOSE 8000