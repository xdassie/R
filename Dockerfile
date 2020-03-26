#FROM ubuntu:16.04
FROM rocker/rstudio:3.6.2
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get -y update && apt-get -y upgrade
#RUN apt-get -y install wget  libcurl4-openssl-dev r-base-dev r-base r-recommended r-cran-curl libaio1 libaio-dev 
RUN R --version

RUN mkdir /R
RUN adduser ruser
RUN chown ruser /R

