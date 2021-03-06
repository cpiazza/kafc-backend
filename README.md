# KAFC Backend
Ruby Version: 2.4.5

## Setup
1. Clone the Repository: `git clone https://git@github.com:cpiazza/kafc-backend.git`
2. Change into the project folder `cd kafc-backend`
3. Install the required gems: `bundle install`
4. Create the database `rake db:create`
5. Run Migrations `rake db:migrate`

## Creating Models
Using the rails generator will create the database migration, the model class, and an empty test (spec) file. 

Syntax is: `rails generate model NAME [field[:type][:index] field[:type][:index]] [options]`

**Example:** `rails generate model User email:string first_name:string last_name:string`

*Creates*
1. A migration file named `nnnnnnnnnnnnnn_create_users.rb` (the series of n's represents a timestamp)
2. A `User` model class file
3. A `user_spec.rb` test file

Running `rake db:migrate` will create the database table. 


## Running Tests
RSpec is used for unit testing.

**Examples:**

1. `rspec spec` will run all tests
2. `rspec spec/models/` will run all tests in the `models` directory
3. `rspec spec/models/user_spec.rb` will run just the specs for the `User` model
4. `rspec spec/models/user_spec.rb:10` will run just the test for the `User` model at line 10 of the file
