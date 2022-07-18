# --- Sources ---
# https://www.server-world.info/en/note?os=Ubuntu_20.04&p=mail&f=5
# https://ubuntu.com/server/docs/mail-postfix
# https://github.com/cloudposse/postfix/blob/master/Dockerfile
# https://serverfault.com/questions/933459/dockerfile-for-postfix
# 

FROM ubuntu:latest
ENV DEBIAN_FRONTEND noninteractive
RUN apt update && apt upgrade -y

#Dependencies and debugging tools
RUN apt install -y nano dnsutils net-tools iputils-ping dnsutils apt-utils openssl mailutils

#PostFix installation and preparation
RUN apt install postfix -y
COPY ./PostFix/ /etc/postfix/
RUN mkdir /etc/postfix/ssl
RUN mkdir /etc/postfix/tls

#OpenSSL configuration
#RUN openssl req -new -x509 -nodes -out /etc/postfix/tls/smtpd.pem -keyout /etc/postfix/tls/smtpd.pem -days 3650
#RUN openssl req -x509 -nodes -newkey rsa:2048 -keyout /etc/postfix/ssl/mailserver.key -out /etc/postfix/ssl/mailserver.crt -nodes -days 365

#Dovecot Installation
RUN apt install -y dovecot-core dovecot-imapd dovecot-sieve dovecot-managesieved
COPY ./Dovecot/ /etc/dovecot/conf.d/

#Launch command
CMD ["service saslauthd start; service postfix start; service dovecot start"]
