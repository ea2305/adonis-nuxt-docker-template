FROM node:14.1.0-alpine3.11

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

VOLUME /usr/src/app
VOLUME /usr/src/app/node_modules

ENV NPM_CONFIG_PROGRESS=false
ENV VERSION=local

COPY package.json /usr/src/app/
RUN npm install --quiet --unsafe-perm --no-progress --no-audit --only=development

ENV NODE_ENV development
ENV NUXT_HOST 0.0.0.0
ENV NUXT_PORT 3000

COPY . /usr/src/app
RUN npm install --cache /tmp/empty-cache

EXPOSE 3000