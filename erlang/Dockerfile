# VERSION v1
# docker build -t="liulantao/erlang:v1" .
FROM liulantao/fpm
MAINTAINER Liu Lantao <liulantao@gmail.com>
ENV REFRESHED_AT 2015-03-30
RUN curl http://packages.erlang-solutions.com/rpm/centos/erlang_solutions.repo -o /etc/yum.repos.d/erlang_solutions.repo
RUN yum install -y erlang
