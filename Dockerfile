FROM linuxserver/rutorrent:58
MAINTAINER djmattyg007

ENV RTORRENTIMAGE_VERSION=2017.02.03-1

RUN apk add --no-cache dhcpcd
COPY dhcpcd.sh /etc/services.d/dhcpcd/run

COPY config-patches.patch /tmp/config-patches.patch
RUN patch -p1 < /tmp/config-patches.patch && \
    rm /tmp/config-patches.patch
