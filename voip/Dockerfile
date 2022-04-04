FROM debian:latest

RUN apt-get update 
RUN apt-get -y upgrade

RUN apt-get -y install systemd dnsutils net-tools asterisk

EXPOSE 5060/udp
EXPOSE 5060/tcp

EXPOSE 19000-20000/udp

COPY sip.conf /etc/asterisk/sip.conf
COPY extensions.conf /etc/asterisk/extensions.conf
COPY voicemail.conf /etc/asterisk/voicemail.conf
