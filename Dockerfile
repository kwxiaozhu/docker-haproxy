FROM alpine:edge
RUN apk add --update haproxy && rm -rf /var/cache/apk/*
ADD haproxy.cfg /etc/haproxy/haproxy.cfg
EXPOSE 1195 31541
CMD /usr/sbin/haproxy -f /etc/haproxy/haproxy.cfg
