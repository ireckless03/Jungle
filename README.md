# Jungle

A mini e-commerce application built with Rails 6.1 for purposes of teaching Rails by example.


![Jungle_products](https://user-images.githubusercontent.com/118557828/229017316-703001ca-c7db-43c4-bc14-d60e9a9c4584.jpeg)
![Jungle_cart](https://user-images.githubusercontent.com/118557828/229017289-a98cca45-1b52-4caa-afeb-087046978f68.jpeg)
![Jungle_payment](https://user-images.githubusercontent.com/118557828/229017276-408e0995-852d-4f45-8022-ceac7d61441d.jpeg)


## Setup

1. Run `bundle install` to install dependencies
2. Create `config/database.yml` by copying `config/database.example.yml`
3. Create `config/secrets.yml` by copying `config/secrets.example.yml`
4. Run `bin/rails db:reset` to create, load and seed db
5. Create .env file based on .env.example
6. Sign up for a Stripe account
7. Put Stripe (test) keys into appropriate .env vars
8. Run `bin/rails s -b 0.0.0.0` to start the server

## Database

If Rails is complaining about authentication to the database, uncomment the user and password fields from `config/database.yml` in the development and test sections, and replace if necessary the user and password `development` to an existing database user.

## Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>

## Dependencies

- Rails 6.1 [Rails Guide](http://guides.rubyonrails.org/v6.1/)
- Bootstrap 5
- PostgreSQL 9.x
- Stripe
