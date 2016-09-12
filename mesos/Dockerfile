# docker build -t liulantao/mesos .
FROM centos:7
MAINTAINER Liu Lantao <liulantao@gmail.com>
ENV REFRESHED_AT 2016-09-12

RUN yum install -y http://repos.mesosphere.com/el-testing/7/noarch/RPMS/mesosphere-el-repo-7-3.noarch.rpm && \
yum update -y && \
yum install -y mesos marathon chronos
