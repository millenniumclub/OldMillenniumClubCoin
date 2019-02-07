FROM debian:stretch
LABEL maintainer="MillenniumClub Developers <dev@millenniumclub.org>"
LABEL description="Dockerised MillenniumClubCore, built from Travis"

RUN apt-get update && apt-get -y upgrade && apt-get clean && rm -fr /var/cache/apt/*

COPY bin/* /usr/bin/
