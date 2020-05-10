FROM node:14.1.0-alpine3.11

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

VOLUME /usr/src/app
VOLUME /usr/src/app/node_modules

# Install app dependencies
ENV NPM_CONFIG_PROGRESS=false
ENV VERSION=local
COPY package.json /usr/src/app/
RUN npm install

# Set environment variables
ENV NODE_ENV development
ENV NUXT_HOST 0.0.0.0
ENV NUXT_PORT 3000

# Bundle app source
COPY . /usr/src/app

# Clear the cache
RUN npm install --cache /tmp/empty-cache

EXPOSE 3000
CMD [ "npm", "run", "dev"]