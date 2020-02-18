FROM ubuntu:20.04
RUN apt-get -y update && apt-get -y upgrade
RUN DEBIAN_FRONTEND=noninteractive; echo 1 | apt-get -y install r-base
RUN R --version
