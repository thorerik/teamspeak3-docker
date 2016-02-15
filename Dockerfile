FROM ubuntu
MAINTAINER Gabriel Gayan

RUN apt-get update
RUN apt-get install -y wget
RUN cd /opt
RUN cd /opt; wget http://dl.4players.de/ts/releases/3.0.12.2/teamspeak3-server_linux_amd64-3.0.12.2.tar.bz2
RUN cd /opt; tar xvjf teamspeak3-server_linux_amd64-3.0.12.2.tar.bz2
RUN cd /opt; rm teamspeak3-server_linux_amd64-3.0.12.2.tar.bz2
RUN cd /opt; mv teamspeak3-server_linux-amd64 teamspeak3-server

EXPOSE 9987/udp

CMD ["/opt/teamspeak3-server/ts3server_minimal_runscript.sh"]
