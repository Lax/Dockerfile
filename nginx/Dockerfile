FROM centos:centos6
MAINTAINER Liu Lantao <liulantao@gmail.com>
ENV REFRESHED_AT 2015-09-23

ADD http://yum.liulantao.com/repo/lax-centos.repo /etc/yum.repos.d/lax.repo
RUN yum install nginx -y

EXPOSE 80
ENTRYPOINT ["/usr/sbin/nginx"]
CMD ["-g", "daemon off;"]
