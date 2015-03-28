# VERSION v1
# docker build -t="liulantao/fpm" .
FROM liulantao/centos6
MAINTAINER Liu Lantao <liulantao@gmail.com>
ENV REFRESHED_AT 2015-03-28
RUN yum install tar which -y
RUN gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
RUN curl -sSL https://get.rvm.io | bash -s stable
RUN source /etc/profile.d/rvm.sh && rvm install ruby
RUN gem install fpm
