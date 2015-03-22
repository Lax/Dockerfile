# Version v1
# docker build -t="liulantao/redis:v1" .
FROM centos:centos7
MAINTAINER Liu Lantao <liulantao@gmail.com>
ENV REFRESHED_AT 2014-10-24
RUN yum install -y http://dl.fedoraproject.org/pub/epel/7/x86_64/e/epel-release-7-5.noarch.rpm
RUN yum -q makecache
RUN yum -q install redis -y
RUN mkdir -p /redis-data
VOLUME ["/redis-data"]
EXPOSE 6379
ENTRYPOINT ["/usr/bin/redis-server"]
CMD ["--dir", "/redis-data"]
