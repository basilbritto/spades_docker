FROM basilbritto/trimgalore_docker
MAINTAINER Basil Britto <basilbritto.xavier@uantwerpen.be>

RUN apt-get update && apt-get -y install \
	bash \
	python \
	python3 \
	wget


WORKDIR /NGStools

RUN wget http://cab.spbu.ru/files/release3.12.0/SPAdes-3.12.0-Linux.tar.gz && tar -xf SPAdes-3.12.0-Linux.tar.gz


ENV PATH="/NGStools/SPAdes-3.12.0-Linux/bin:$PATH"
