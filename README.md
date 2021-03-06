# Adonis 5 + Nuxt Development setup with docker-compose

The goal for this template is provide an easy and cross-platform enviroment for developers who build web applications with Adonis.js v5 and Nuxt.js.
We provide a simple way to start to code with docker-compose setup. Both projects are independent, so you can setup the projects to deploy each of them properly.

### Requirements

- Docker 19.03.8 or newer
- Docker-compose 1.25.4 or newer

### How to run it

just run the following commands:

The first time you use this template run:

> requires execution privilages

```sh
bin/start
```

to install all the modules and generate adonis build

Then, To launch applications, you can use:

```sh
npm run up
```

### Adonis CLI

To run adonis ace commands you willn two way to do it:

- Go to the core-api project folder and run it
- Access to docker bash, to do that just run 

```sh
npm run adonis-cli
```

And write your adonis command there.

> don't forget to close the docker bash console

```sh
exit;
```

*The docker configuration exposes the following ports*

|Application|Port|
|--|--|
|Adonis.js v5|3333|
|Nuxt.js|3000|

### General folder structure

|Folder|Function|
|--|--|
|core-api|Main adonis app folder, you can expect the usual adonis configuration there|
|core-api/docker/dev|Docker development configuration|
|frontstore|Main nuxt app folder, you can expect the usual adonis configuration there|
|frontstore/dev|Docker development configuration|

### Commands

|Command|Description|
|--|--|
|npm run up|Launch docker compose -d and start both applications on their respective ports|
|npm run down|Stop dockers executions|
|npm run down-with-vol|Stop dockers executions and remove volumenes|


### Debugging  🐛

Adonis and Nuxt provides his own configurations in the tsconfig file to generate sources-maps with that we can launch vcode debugger or chrome node debugger.

### LICENSE

- [Template](https://github.com/ea2305/adonis-nuxt-docker-template/blob/master/LICENSE) MIT
- [Adonis.js](https://github.com/adonisjs/core/blob/develop/LICENSE.md) MIT
- [Nuxt.js](https://github.com/nuxt/nuxt.js/blob/dev/LICENSE) MIT
