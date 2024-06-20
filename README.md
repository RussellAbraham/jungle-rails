# Jungle

A mini e-commerce application built with Rails 6.1 for purposes of teaching Rails by example.

## Screenshots

![Admin Page](docs/admin.png)
*This is the admin page where you can manage products and categories.*

![Cart Page](docs/cart.png)
*This is the cart page where you can view and manage your shopping cart.*

![Filter Page](docs/filter.png)
*This is the filter page where you can filter products by category.*

![Header Page](docs/header.png)
*This is the header section of the website.*

![Login Page](docs/login.png)
*This is the login page where users can log in to their accounts.*

![Stripe Payment Page](docs/stripe_payment.png)
*This is the payment page where users can make payments using Stripe.*

![Payment Success Page](docs/payment_success.png)
*This is the payment success page displayed after a successful payment.*

![Product Page](docs/product1.png)
*This is a product page displaying product details.*

![Signup Page](docs/signup.png)
*This is the signup page where users can create a new account.*

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
