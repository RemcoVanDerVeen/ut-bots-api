# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

3.3.0

* System dependencies

# how to build:

```
docker compose build --no-cache
docker compose run --rm api bundle install
docker compose run --rm api npm install npx
docker compose run --rm api rails css:install:bootstrap
docker compose run --rm api bundle exec rails db:setup
```