FROM node:buster-slim

LABEL maintainer="Kirill Vercetti <office@kyzima-spb.com>"

ENV DEBIAN_FRONTEND noninteractive
ENV UID 1000
ENV GID 1000

RUN apt update

RUN apt install -yq --no-install-recommends wget make \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

COPY ./entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

