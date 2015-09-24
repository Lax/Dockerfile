FROM centos:centos6
MAINTAINER Liu Lantao <liulantao@gmail.com>
ENV REFRESHED_AT 2015-09-23

RUN rm /bin/sh && ln -s /bin/bash /bin/sh
RUN yum install -y http://dl.fedoraproject.org/pub/epel/epel-release-latest-6.noarch.rpm

ADD http://yum.liulantao.com/repo/lax-centos.repo /etc/yum.repos.d/lax.repo
RUN useradd nginx
RUN yum install nginx -y

EXPOSE 80
ENTRYPOINT ["/usr/sbin/nginx"]
CMD ["-g", "daemon off;"]
