FROM shito/alpine-node:edge
MAINTAINER Sebastian Knoth <sk@bytepark.de>

WORKDIR /tmp

RUN npm install gulp -g

WORKDIR /usr/share/nginx/html

CMD ["npm", "start"]