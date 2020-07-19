FROM node:buster-slim

LABEL maintainer="Kirill Vercetti <office@kyzima-spb.com>"

ENV DEBIAN_FRONTEND noninteractive

RUN apt install -yq --no-install-recommends wget make \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

COPY ./entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

