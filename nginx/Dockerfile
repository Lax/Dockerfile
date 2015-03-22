# VERSION v1
# docker build -t="liulantao/nginx:v1" .
FROM centos:centos7
MAINTAINER Liu Lantao <liulantao@gmail.com>
ENV REFRESHED_AT 2014-10-24
RUN yum install -y http://dl.fedoraproject.org/pub/epel/7/x86_64/e/epel-release-7-5.noarch.rpm
RUN yum -q makecache
RUN yum install nginx -y
EXPOSE 80
ENTRYPOINT ["/usr/sbin/nginx"]
CMD ["-g", "daemon off;"]
