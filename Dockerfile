FROM alpine:latest

MAINTAINER Sébastien HOUZÉ <sebastien.houze@verylastroom.com>

ENV MOCO_ROOT=1

RUN apk add --no-cache \
        openjdk8-jre \
        curl \
        bash \
    && curl -sL https://raw.githubusercontent.com/dreamhead/moco/master/moco-shell/moco > /usr/local/bin/moco \
    && chmod 0755 /usr/local/bin/moco \
    && /usr/local/bin/moco \
    && mkdir -p /var/moco \
    && printf "[]" > /var/moco/moco.json \
    && rm -rf \
        /tmp/* \
        /var/cache/apk/*

EXPOSE 8000

CMD ["/usr/local/bin/moco", "start", "-p", "8000", "-c", "/var/moco/moco.json"]
