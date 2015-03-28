# VERSION v1
# docker build -t="liulantao/fpm" .
FROM liulantao/centos6
MAINTAINER Liu Lantao <liulantao@gmail.com>
ENV REFRESHED_AT 2015-03-28
RUN yum install tar which -y
ADD install-rvm-ruby-fpm.sh /tmp/
RUN bash -x /tmp/install-rvm-ruby-fpm.sh
