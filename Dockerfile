FROM linuxserver/rutorrent:49
MAINTAINER djmattyg007

ENV RTORRENTIMAGE_VERSION=2016.12.29-2

RUN apk add --no-cache dhcpcd && \
    apk add --no-cache --repository http://dl-cdn.alpinelinux.org/alpine/v3.5/main -u nginx && \
    rm /etc/nginx/conf.d/default.conf
COPY dhcpcd.sh /etc/services.d/dhcpcd/run

COPY config-patches.patch /tmp/config-patches.patch
RUN patch -p1 < /tmp/config-patches.patch && \
    rm /tmp/config-patches.patch
