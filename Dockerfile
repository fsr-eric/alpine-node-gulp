FROM shito/alpine-node:edge
MAINTAINER Sebastian Knoth <sk@bytepark.de>

WORKDIR /tmp

RUN apk add --update \
    python \
    python-dev \
    py-pip \
    build-base \
  && pip install virtualenv \
  && rm -rf /var/cache/apk/*

RUN npm install gulp -g

WORKDIR /usr/share/nginx/html

RUN npm install gulp --save-dev

ENTRYPOINT ["gulp"]
CMD ["--version"]