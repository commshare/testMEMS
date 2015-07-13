#!/bin/sh
set -o nounset                              # Treat unset variables as an error

NGINX_VERSION=1.8.0
NGINX_URI="http://nginx.org/download/nginx-$NGINX_VERSION.tar.gz"


#if [ ! -x "`which wget 2>/dev/null`" ];then
#        echo "Need to install wget."
#        exit 2
#fi
#mkdir -p /tmp/builddir/nginx-$NGINX_VERSION
#cp -r . /tmp/builddir/nginx-$NGINX_VERSION/nginx-vod-module
#cd /tmp/builddir
#wget $NGINX_URI -O kaltura-nginx-$NGINX_VERSION.tar.gz
#tar zxvf kaltura-nginx-$NGINX_VERSION.tar.gz
#cd nginx-$NGINX_VERSION

source dep.sh

NGX_OUT=/home/zhangbin/zbhome/SRS/http/ngxvod/ngxout
NGX_SRC=/home/zhangbin/zbhome/SRS/http/ngxvod/nginx-1.9.2
cd $NGX_SRC
 CFLAGS="-g -O0" ./configure \
        --prefix=$NGX_OUT \
        --sbin-path=$NGX_OUT/nginx \
        --conf-path=$NGX_OUT/conf/nginx.conf \
        --error-log-path=$NGX_OUT/logs/errs.log \
        --http-log-path=$NGX_OUT/access.log \
        --pid-path=$NGX_OUT/nginx.pid \
        --lock-path=$NGX_OUT/nginx.lock \
        --http-client-body-temp-path=$NGX_OUT/temp/client_temp \
        --http-proxy-temp-path=$NGX_OUT/temp/proxy_temp \
        --http-fastcgi-temp-path=$NGX_OUT/temp/fastcgi_temp \
        --http-uwsgi-temp-path=$NGX_OUT/temp/uwsgi_temp \
        --http-scgi-temp-path=$NGX_OUT/temp/scgi_temp \
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
        --with-ipv6 \
        --with-debug \
        --with-threads \
        --add-module=/home/zhangbin/zbhome/SRS/http/ngxvod/nginx-vod-module \
        $*
make


#/configure  --prefix=/home/zhangbin/zbhome/SRS/http/ngxout  --sbin-path=/home/zhangbin/zbhome/SRS/http/ngxout  --conf-path=/home/zhangbin/zbhome/SRS/http/ngxout  --error-log-path=/home/zhangbin/zbhome/SRS/http/ngxout    --pid-path=/home/zhangbin/zbhome/SRS/http/ngxout      --lock-path=/home/zhangbin/zbhome/SRS/http/ngxout  --add-module=/home/zhangbin/zbhome/SRS/http/nginx-vod-module  --with-file-aio --with-threads --with-debug 
