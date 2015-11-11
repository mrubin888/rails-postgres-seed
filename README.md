# rails-postgres-seed
A rails seed project with postgres as a database.

## Setup

### Dependencies
1. Run ```bundle update``` from project root to install dependencies

### Database
1. Modify 'config/sample_database.yml' to fit your postgres settings and save it as 'config/database.yml'
1. Run ```rake db:setup``` to create and load your database

### Secrets
1. Generate a secret key with ```rake secret``` and save it off to the environment variable RAILS_SECRET_KEY_BASE

## Test
The rails api testing is setup for TDD and utilizes the following components:
- Rspec as a testing framework
- FactoryGirl to provide factory implementation
- Faker for content generation

To add tests, add files to the spec directory. To run your tests, simply run ```rspec spec``` from the project root.

## Run
Run ```rails s``` from project root.