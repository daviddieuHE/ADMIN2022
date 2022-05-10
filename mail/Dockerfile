FROM ubuntu:latest

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update -y

RUN apt-get install -y nano dnsutils net-tools iputils-ping

RUN apt-get install postfix -y

#COPY >>> /etc/postfix/main.cf
