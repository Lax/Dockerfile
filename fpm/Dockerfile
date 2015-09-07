# VERSION v1
# docker build -t="liulantao/fpm" .
FROM liulantao/centos6
MAINTAINER Liu Lantao <liulantao@gmail.com>
ENV REFRESHED_AT 2015-09-07
RUN yum install rpm-build tar which -y
ADD install-rvm-ruby-fpm.sh /tmp/
RUN bash /tmp/install-rvm-ruby-fpm.sh
