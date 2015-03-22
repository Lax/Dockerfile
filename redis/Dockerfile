# Version v1
# docker build -t="liulantao/redis" .
FROM liulantao/centos7
MAINTAINER Liu Lantao <liulantao@gmail.com>
ENV REFRESHED_AT 2014-10-24
RUN yum -q install redis -y
RUN mkdir -p /redis-data
VOLUME ["/redis-data"]
EXPOSE 6379
ENTRYPOINT ["/usr/bin/redis-server"]
CMD ["--dir", "/redis-data"]
