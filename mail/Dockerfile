FROM ubuntu

RUN apt-get update -y
RUN apt-get -y upgrade

RUN apt-get install -y nano ssh mutt dnsutils net-tools iputils-ping mailutils

#DB

#SSL

#dovecot
RUN apt-get install -y dovecot-core dovecot-imapd dovecot-mysql
RUN apt-get install -y dovecot-sieve dovecot-managesieved


#postfix
RUN apt-get install -y postfix postfix-mysql

#antispam

#boot-commands
