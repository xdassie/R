FROM ubuntu:20.04
RUN apt-get -y update && apt-get -y upgrade
RUN apt-get install r-base
RUN apt-get -y install r-base
RUN R --version
