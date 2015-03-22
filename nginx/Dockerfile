# VERSION v1
# docker build -t="liulantao/nginx" .
FROM liulantao/centos7
MAINTAINER Liu Lantao <liulantao@gmail.com>
ENV REFRESHED_AT 2014-10-24
RUN yum install nginx -y
EXPOSE 80
ENTRYPOINT ["/usr/sbin/nginx"]
CMD ["-g", "daemon off;"]
