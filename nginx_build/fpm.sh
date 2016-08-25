#!/bin/bash
. /etc/profile

#PREFIX=/
#TMPROOT=/tmp/rpmbuild
cd /tmp/output

fpm -s dir -t rpm -f \
-n nginx \
-v $NGINX_VER --iteration 3.el6 \
--epoch $(date +%Y%m%d) \
--vendor "Liu Lantao" \
--description "Nginx package by Liu Lantao(https://github.com/Lax)" \
--url "https://github.com/Lax" \
--rpm-user nginx --rpm-group nginx \
-d GeoIP \
-C $TMPROOT \
--prefix $PREFIX \
--directories $PREFIX \
--config-files ${PREFIX}etc/nginx/ \
./