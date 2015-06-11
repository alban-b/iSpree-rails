# ispree-rails

## Technologies

* Ruby on Rails 4.2
* Ruby 2.2
* Postgres
* Spree

## Setup

Run the following:

```
bin/setup
```

During that setup run you'll be asked to insert (or use default)
admin credentials for Spree.

## Development

### Guard

Keep guard running at all times:

```
bin/guard
```

### Spree

#### Sample data

To generate sample data in Spree run the following commands:

```
bin/rake db:seed
bin/rake spree:sample_load
```

## Spree API

### Authentication token

All read-only API requests work without sending X-Spree-Token.
Request to write or access resources like `orders` require sending token,
which can be generated in admin panel, under user's profile page.

## Production

### Image upload

Spree by default uses [Paperclip] (https://github.com/thoughtbot/paperclip) to handle upload.
In production mode images are stored and served via Amazon Simple Storage Service.
In order to work properly, app must be provided with following credentials:

* access key id
* secret access key
* bucket name
* region

You can specify these credentials in production section in `config/secret.yml`
file, or better yet, by setting environment variables on production server.

