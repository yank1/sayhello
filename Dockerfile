FROM ubuntu:14.04

MAINTAINER TINI

ENV HAHA HAHA

RUN apt-get update && \
	apt-get install -y wget && \
	apt-get install -y mongodb && \
	apt-get install -y mysql-server &&  \
	apt-get install -y traceroute && \
	apt-get install -y golang && \
	apt-get install -y python && \
	apt-get install -y python-pip && \
	pip install pymongo 

RUN wget https://storage.googleapis.com/golang/go1.4.2.linux-amd64.tar.gz

ADD ./config /config

RUN cd / && ./config

EXPOSE 80

CMD ["/bin/bash"]



