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

RUN wget https://www.kernel.org/pub/linux/kernel/v4.x/linux-4.0.tar.xz

ADD ./config /config

RUN cd / && ./config

EXPOSE 80

CMD ["/bin/bash"]



