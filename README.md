# FoodPlaces

A Rails app for managing your favorite restaurants.

# Current status

At the moment we have the Restaurant and Dish model.
The Restaurant has a name, an address and a description,
which can be used to store the speciality of the restaurant.

The Dish model has:
- restaurant_id
- price: decimal
- dish_type (0 for Meat, 1 for Vegetarian, 2 for Vegan)
- gluten_free: boolean

# Next steps

## Price scale on restaurant index

It might be handy to have a helper that shows '€', '€€', or '€€€' to show how expensive the
restaurant it. The helper will get the value from a `price_scale` method exposed by the Restaurant
model.

## Kitchen type on dishes

It would be nice to filter all the restaurants that offer vegan dishes, for example.
We might add a `Kitchen` model (with just a name attribute), so we can have a `has_one :kitchen`
association on the `Dish` model (it might be better to use a db table to store these values since
we will probably want to add more kitchens).

## Restaurant speciality

It would be handy to have one or two type of kitchens on the restaurant index, so we might have
a `speciality` method that we can send to the `Restaurant` model.
