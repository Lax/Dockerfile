# VERSION v1
# docker build -t="liulantao/erlang:v2" .
FROM liulantao/fpm
MAINTAINER Liu Lantao <liulantao@gmail.com>
ENV REFRESHED_AT 2015-09-22
RUN curl http://packages.erlang-solutions.com/rpm/centos/erlang_solutions.repo -o /etc/yum.repos.d/erlang_solutions.repo
RUN yum install -yq erlang git expat-devel redhat-lsb-core
