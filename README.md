# README

## Google OAuth configuration

Copy the environment template and replace the placeholders with the OAuth
credentials from Google Cloud:

```sh
cp .env.example .env
```

`bin/dev` uses Foreman, which loads `.env` automatically. In other environments,
provide `GOOGLE_CLIENT_ID` and `GOOGLE_CLIENT_SECRET` to the Rails process.

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
