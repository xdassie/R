FROM centos:8
#RUN yum -y update && yum upgrade -y && yum -y install epel-release && yum clean all
#RUN yum -y install R && yum clean all
#RUN  yum -y install libcurl-devel && \
#	 yum -y install openssl-devel && \
#	 yum -y install libxml2-devel && \
#     yum clean all

RUN  yum -y update && yum -y upgrade && yum -y install chromium-browser && yum -y group install "Development tools" && \
 yum -y install readline-devel && \
 yum -y install xz xz-devel  && \
 yum -y install pcre pcre-devel && \
 yum -y install libcurl-devel && \
 yum -y install texlive && \
 yum -y install java-1.8.0-openjdk && \
 yum -y install *gfortran* && \
 yum -y install zlib* && \
yum -y install bzip2-* 

RUN mkdir /R
RUN adduser ruser
RUN chown ruser /R

#FROM ubuntu:20.04
#ENV DEBIAN_FRONTEND=noninteractive
#RUN apt-get -y update && apt-get -y upgrade
#RUN apt-get -y install r-base
#RUN R --version
#No comment
