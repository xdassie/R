FROM centos:7
RUN yum -y install epel-release && yum clean all
RUN yum -y install R && yum clean all
RUN  yum -y install libcurl-devel && \
	 yum -y install openssl-devel && \
	 yum -y install libxml2-devel && \
     yum clean all
RUN mkdir /R
RUN adduser ruser
RUN chown ruser /R

#FROM ubuntu:20.04
#ENV DEBIAN_FRONTEND=noninteractive
#RUN apt-get -y update && apt-get -y upgrade
#RUN apt-get -y install r-base
#RUN R --version
#No comment
