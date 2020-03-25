FROM centos:8
#RUN yum -y update && yum upgrade -y && yum -y install epel-release && yum clean all
#RUN yum -y install R && yum clean all
#RUN  yum -y install libcurl-devel && \
#	 yum -y install openssl-devel && \
#	 yum -y install libxml2-devel && \
#     yum clean all

RUN  yum -y group install "Development tools" && \
 yum install readline-devel && \
 yum install xz xz-devel  && \
 yum install pcre pcre-devel && \
 yum install libcurl-devel && \
 yum install texlive && \
 yum install java-1.8.0-openjdk && \
 yum install *gfortran* && \
 yum install zlib* && \
yum install bzip2-*

RUN mkdir /R
RUN adduser ruser
RUN chown ruser /R

#FROM ubuntu:20.04
#ENV DEBIAN_FRONTEND=noninteractive
#RUN apt-get -y update && apt-get -y upgrade
#RUN apt-get -y install r-base
#RUN R --version
#No comment
