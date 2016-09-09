FROM debian:wheezy
MAINTAINER <mrummuka@hotmail.com>
RUN apt-get update && apt-get install -y \
	wget \
	build-essential \
	make \
	gawk \
	gcc \
	dos2unix \
	bc \
	dc \
	units \
	sharutils \
	curl \
	gpsbabel \
	golang-go \
        git \
        default-jre \
	zip \
 && rm -rf /var/lib/apt/lists/* \
 && cd ~ \
 && wget https://github.com/ericchiang/pup/releases/download/v0.4.0/pup_v0.4.0_linux_amd64.zip \
 && unzip pup_v0.4.0_linux_amd64.zip \
 && ln -s ~/pup /usr/local/bin/ \
 && cd /opt \
 && wget `curl -s http://geo.rkkda.com/ | pup 'a:contains("geo.rkkda") text{}'` \
 && tar xvzf `curl -s http://geo.rkkda.com/ | pup 'a:contains("geo.rkkda") attr{href}'`\
 && rm geo-*.tar.gz \
 && cd geo \
 && make \
 && make install \
 && mkdir ~/Wherigo \
 && cd ~/Wherigo \
 && git clone https://github.com/driquet/gwcd \
 && git clone https://github.com/Krevo/WherigoTools \
 && ln -s WherigoTools/extra/unluac_2015_06_13.jar . \
 && apt-get purge -y --auto-remove wget build-essential make gcc git zip golang-go
# Add geotools installed to /root/bin to path
ENV PATH /root/bin:$PATH
COPY .georc /root/
