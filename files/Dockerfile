FROM alpine:3.12
ARG nginx_ver=1.20.1
RUN apk --update --no-cache add build-base  openssl-dev    pcre-dev    zlib-dev

RUN mkdir -p /tmp/src && \
    cd /tmp/src && \
    wget http://nginx.org/download/nginx-${nginx_ver}.tar.gz && \
    tar -zxf nginx-${nginx_ver}.tar.gz && \
    cd nginx-${nginx_ver} && \
    ./configure --sbin-path=/usr/bin/nginx \
        --conf-path=/etc/nginx/nginx.conf \
        --pid-path=/var/run/nginx.pid \
        --error-log-path=/var/log/nginx/error.log \
        --http-log-path=/var/log/nginx/access.log \
        --with-pcre \
        --with-http_ssl_module && \
    make && \
    make install && \
    rm -rf /tmp/src && \
    sed -i -E "s/Welcome to nginx/Welcome to nginx in DOCKER/g" /usr/local/nginx/html/index.html
CMD ["nginx", "-g", "daemon off;"]