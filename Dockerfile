FROM alpine:latest

MAINTAINER android.florian@gmail.com

ENV SQUID_VERSION=3.5.27-r0 \
    SQUID_CACHE_DIR=/var/cache/squid \
    SQUID_LOG_DIR=/var/log/squid \
    SQUID_USER=squid

RUN apk update \
    && apk add squid=${SQUID_VERSION} \
    && apk add curl \
    && rm -rf /var/cache/apk/*

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
