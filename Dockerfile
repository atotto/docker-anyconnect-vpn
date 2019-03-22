FROM alpine:edge
RUN apk -U add --no-cache --repository http://dl-cdn.alpinelinux.org/alpine/edge/testing/ openconnect
ADD entrypoint.sh /entrypoint.sh
HEALTHCHECK  --interval=10s --timeout=10s --start-period=10s \
  CMD /sbin/ifconfig tun0
CMD ["/entrypoint.sh"]
