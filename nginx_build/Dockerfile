# VERSION v1.9.4
# docker build -t="liulantao/nginx" .
FROM liulantao/fpm:latest
MAINTAINER Liu Lantao <liulantao@gmail.com>

ENV REFRESHED_AT 2015-09-07
RUN yum -y -q install gcc pcre-devel openssl-devel make jemalloc-devel lua-devel GeoIP-devel

ENV NGINX_VER 1.9.5
ENV NGX_HTTP_ACCOUNTING_MODULE_VER v0.5
ENV ECHO_NGINX_MODULE_VER v0.58
ENV LUA_NGINX_MODULE_VER v0.9.16
RUN useradd -r -d /etc/nginx -s /bin/false nginx

WORKDIR /usr/src/nginx
RUN curl -sLO http://nginx.org/download/nginx-$NGINX_VER.tar.gz && \
  tar zxf nginx-$NGINX_VER.tar.gz

WORKDIR /usr/src/nginx/nginx-$NGINX_VER
RUN curl -sLO https://github.com/Lax/ngx_http_accounting_module/archive/$NGX_HTTP_ACCOUNTING_MODULE_VER.tar.gz && \
  tar zxvf $NGX_HTTP_ACCOUNTING_MODULE_VER.tar.gz
RUN curl -sLO https://github.com/openresty/echo-nginx-module/archive/$ECHO_NGINX_MODULE_VER.tar.gz && \
  tar zxvf $ECHO_NGINX_MODULE_VER.tar.gz
RUN curl -sLO https://github.com/openresty/lua-nginx-module/archive/$LUA_NGINX_MODULE_VER.tar.gz && \
  tar zxvf $LUA_NGINX_MODULE_VER.tar.gz

RUN pwd

RUN ./configure --prefix=/etc/nginx \
  --sbin-path=/usr/sbin/nginx \
  --conf-path=/etc/nginx/nginx.conf \
  --error-log-path=/var/log/nginx/error.log \
  --http-log-path=/var/log/nginx/access.log \
  --pid-path=/var/run/nginx.pid \
  --lock-path=/var/run/nginx.lock \
  --http-client-body-temp-path=/var/cache/nginx/client_temp \
  --http-proxy-temp-path=/var/cache/nginx/proxy_temp \
  --http-fastcgi-temp-path=/var/cache/nginx/fastcgi_temp \
  --http-uwsgi-temp-path=/var/cache/nginx/uwsgi_temp \
  --http-scgi-temp-path=/var/cache/nginx/scgi_temp \
  --user=nginx \
  --group=nginx \
  --with-http_geoip_module \
  --add-module=ngx_http_accounting_module-${NGX_HTTP_ACCOUNTING_MODULE_VER:1} \
  --add-module=echo-nginx-module-${ECHO_NGINX_MODULE_VER:1} \
  --add-module=lua-nginx-module-${LUA_NGINX_MODULE_VER:1} \
  --with-http_ssl_module \
  --with-http_realip_module \
  --with-http_addition_module \
  --with-http_sub_module \
  --with-http_dav_module \
  --with-http_flv_module \
  --with-http_mp4_module \
  --with-http_gunzip_module \
  --with-http_gzip_static_module \
  --with-http_random_index_module \
  --with-http_secure_link_module \
  --with-http_stub_status_module \
  --with-http_auth_request_module \
  --with-mail \
  --with-mail_ssl_module \
  --with-file-aio \
  --with-http_spdy_module \
  --with-ipv6 && \
  make && make install DESTDIR=/tmp/rpmbuild

ENV PREFIX /
ENV TMPROOT /tmp/rpmbuild

RUN mkdir -p $TMPROOT/var/cache/nginx

ADD fpm.sh /tmp/fpm.sh
ENTRYPOINT ["/tmp/fpm.sh"]
