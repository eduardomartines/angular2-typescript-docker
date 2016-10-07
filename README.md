angular-quickstart
===

[![Build Status](https://travis-ci.org/eduardomartines/angular2-typescript-docker.svg?branch=master)](https://travis-ci.org/eduardomartines/angular2-typescript-docker)

This project is based on the [official Angular 2 quickstart](https://github.com/angular/quickstart).

Major adjustments:

* Awesome **Docker** support (i.e runs `unit` and `e2e` tests inside a `selenium container`)
* Awesome **folder structure** (i.e `dist`, `stylesheets`)
* Awesome application of the **DRY**, **YAGNI** and **KISS** principles
* Awesome refactor so the whole project can be easily renamed, just find by `angular-quickstart` ;)
* Removes `Wallaby` (because it is a paid service)

## running

```bash
docker-compose build
```

```bash
docker-compose up -d
```

## using

to access the application:

```bash
http://localhost:3000
```

to access the Browser Sync:

```bash
http://localhost:3001
```

## testing

to run `e2e` tests:

```bash
docker-compose exec angular-quickstart-dev npm run e2e
```

to run `spec` tests:

```bash
docker-compose exec angular-quickstart-dev npm run test-once
```
