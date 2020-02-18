FROM ubuntu:18.04
RUN apt-get -y update && apt-get -y upgrade
RUN apt-get -y install r-base
RUN R --version

