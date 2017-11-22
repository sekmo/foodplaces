# FoodPlaces

A Rails app for managing your favorite restaurants.

## Feature specs
- User gets a list of restaurants with name, address, and kitchen type
- User sees a google maps view and can see restaurant details clicking on the markers
- User gets a list of the dishes when opening the page of a restaurant
- User can insert new restaurants
- User can insert new dishes

## Domain model

At the moment we have the `Restaurant` and `Dish` model.
The `dishes` association is a nested attribute for `Restaurant`.

#### Restaurant model
- name: string
- address: string
- kitchen_type: string

#### Dish model
- restaurant_id
- price: decimal
- dish_type: enum (0: "Meat", 1: "Vegetarian", 2: "Vegan")
- gluten_free: boolean

## Next features

- **Restaurant reviews**
Have the ability to leave a review to a restaurant, and see the average rating for every restaurant.

- **Veggie level for dishes**  
It would be nice to specify if a dish is vegan/vegetarian, so that you can see the "veggie" level on the restaurant list.

## Getting started

1. Clone this repository to your computer:
`git clone https://sekmo.github.com/foodplaces`

2. `cd` into the directory

3. run `bundle install` (or just `bundle`) to install all the gems specified on the `Gemfile`

3. run `bin/rails db:create db:migrate` to create the development and test database

4. run `bundle exec rspec` to execute the tests

6. run `bin/rails s` to start the server

7. the app is running at [localhost:3000](http://localhost:3000/).
