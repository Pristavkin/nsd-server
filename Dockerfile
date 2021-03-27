FROM alpine:3.13

LABEL description "Simple DNS authoritative server with DNSSEC support"
LABEL maintainer "Alexey Pristavkin <alexey@pristavk.in>"
LABEL org.opencontainers.image.source https://github.com/Pristavkin/nsd-server

ENV UID=991 GID=991

RUN apk add --no-cache nsd \
      nsd-doc \
      tini

COPY bin /usr/local/bin
VOLUME /zones /etc/nsd /var/db/nsd
EXPOSE 53 53/udp
CMD ["run.sh"]