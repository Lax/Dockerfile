# VERSION v1
# docker build -t="liulantao/erlang:v1" .
FROM liulantao/fpm
MAINTAINER Liu Lantao <liulantao@gmail.com>
ENV REFRESHED_AT 2015-03-30
RUN curl http://packages.erlang-solutions.com/rpm/centos/erlang_solutions.repo -o /etc/yum.repos.d/erlang_solutions.repo
RUN yum install -yq erlang git expat-devel ruby ruby-devel redhat-lsb-core
RUN ["/bin/bash", "-c", ". /etc/profile && gem install fpm"]
