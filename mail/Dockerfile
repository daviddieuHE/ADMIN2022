#https://www.digitalocean.com/community/tutorials/how-to-set-up-a-postfix-e-mail-server-with-dovecot
FROM debian:latest

RUN apt-get update -y && \
	apt-get -y upgrade

RUN apt-get install -y nano ssh mutt dnsutils net-tools iputils-ping mailutils

#DB

#SSL

#certificat
#RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/mail.key -out /etc/ssl/certs/mailcert.pem

#dovecot
RUN apt-get install -y dovecot-core dovecot-imapd dovecot-mysql && \
	apt-get install -y dovecot-sieve dovecot-managesieved


#postfix
RUN apt-get install -y postfix postfix-mysql

#antispam

#boot-commands
