FROM node:14

RUN mkdir -p /usr/src/app

VOLUME /usr/src/app
VOLUME /usr/src/app/node_modules

WORKDIR /usr/src/app

ENV NPM_CONFIG_PROGRESS=false
ENV NODE_ENV development
ENV VERSION=local

COPY package.json /usr/src/app/

ENV HOST 0.0.0.0
ENV PORT 3333

RUN npm install --quiet --unsafe-perm --no-progress --no-audit --only=development
COPY . /usr/src/app

RUN npm run build
RUN npm install --cache /tmp/empty-cache

EXPOSE 3333
