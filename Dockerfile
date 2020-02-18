FROM ubuntu:20.04
RUN apt-get -y update && apt-get -y upgrade
RUN DEBIAN_FRONTEND=noninteractive; apt-get -y install r-base
RUN R --version
