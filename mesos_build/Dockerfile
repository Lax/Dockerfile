FROM centos:7
MAINTAINER Liu Lantao <liulantao@gmail.com>
ENV REFRESHED_AT 2016-09-01

ENV MESOS_VERSION 1.0.1

RUN yum install -y -q epel-release && \
yum update -y -q && \
yum install -y -q maven python-devel java-1.8.0-openjdk-devel zlib-devel libcurl-devel openssl-devel cyrus-sasl-devel cyrus-sasl-md5 apr-devel subversion-devel apr-util-devel gcc-c++ patch make curl

RUN curl -s -L -O http://www.apache.org/dist/mesos/${MESOS_VERSION}/mesos-${MESOS_VERSION}.tar.gz && \
tar zxvf mesos-${MESOS_VERSION}.tar.gz && \
rm mesos-${MESOS_VERSION}.tar.gz && \
mkdir mesos-${MESOS_VERSION}/build && \
cd mesos-${MESOS_VERSION}/build && \
../configure && make V=0 && make check && make install && \
cd ../.. && rm -rf mesos-${MESOS_VERSION}
