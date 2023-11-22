# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

3.1.4

* System dependencies

# how to build:

```
docker build
docker-compose -rm api bundle install
docker-compose -rm api npm install npx
docker-compose -rm api rails css:install:bootstrap
```