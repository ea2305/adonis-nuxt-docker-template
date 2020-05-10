FROM node:14.1.0-alpine3.11

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

VOLUME /usr/src/app
VOLUME /usr/src/app/node_modules

RUN apk add --update \
  python \
  python-dev \
  py-pip \
  build-base \
  git \
  openssh-client \
&& pip install virtualenv \
&& rm -rf /var/cache/apk/*

# Install app dependencies
ENV NPM_CONFIG_PROGRESS=false
ENV VERSION=local
COPY package.json /usr/src/app/
RUN npm install

# Set environment variables
ENV NODE_ENV development
ENV HOST 0.0.0.0
ENV PORT 3333

# Bundle app source
COPY . /usr/src/app
RUN npm run build

# Clear the cache
RUN npm install --cache /tmp/empty-cache

EXPOSE 3333
CMD [ "node", "--debug", "./build/server.js" ]
