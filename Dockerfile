FROM ubuntu:18.04
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get -y update && apt-get -y upgrade
RUN apt-get -y install wget libssl1.0-dev libcurl4-openssl-dev r-base-dev r-base r-recommended r-cran-curl libaio1 libaio-dev 
RUN R --version

RUN mkdir /R
RUN adduser ruser
RUN chown ruser /R

