FROM debian:stretch
LABEL maintainer="BITNEX Developers <dev@bitnex.org>"
LABEL description="Dockerised BITNEXCore, built from Travis"

RUN apt-get update && apt-get -y upgrade && apt-get clean && rm -fr /var/cache/apt/*

COPY bin/* /usr/bin/
