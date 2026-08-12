# Auth Demo

## Getting started

This project uses [Mise](https://mise.jdx.dev/) to install and select the
required Ruby version. Install Mise and Git on your computer, then clone and
enter the project:

```sh
git clone <repository-url>
cd auth-demo
```

Install the Ruby version declared in `.mise.toml`:

```sh
mise install
ruby --version
```

Modern Ruby installations normally include Bundler. Confirm it is available:

```sh
bundle --version
```

If that command is unavailable, install the Bundler version used by this
project:

```sh
gem install bundler -v 4.0.16
```

Mise installs Ruby, Bundler installs Rails and the other gems listed in the
project's `Gemfile`, and `bin/setup` installs those gems, prepares the database,
clears temporary files, and starts the development server:

```sh
cp .env.example .env
```

Replace the placeholders in `.env` with your Google OAuth credentials, then
run:

```sh
bin/setup
```

To perform setup without starting the server, use:

```sh
bin/setup --skip-server
```

After a setup-only run, start the application with:

```sh
bin/dev
```

Open <http://localhost:3000> in a browser.

## Authentication Setup

Rails' [Devise](https://github.com/heartcombo/devise) gem powers the standard
session authentication.

## Google OAuth configuration

The setup steps above create `.env` from the provided template. Set these values
using credentials from Google Cloud:

```dotenv
GOOGLE_CLIENT_ID=your-google-client-id.apps.googleusercontent.com
GOOGLE_CLIENT_SECRET=your-google-client-secret
```

Rails loads `.env` automatically in development and test, including when using
`rails console`. In other environments, provide `GOOGLE_CLIENT_ID` and
`GOOGLE_CLIENT_SECRET` to the Rails process.

## Database Config

Rails uses SQLite by default. This is sufficient for development and
demonstration purposes; PostgreSQL is recommended for production deployments.
