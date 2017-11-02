# FoodPlaces

A Rails app for managing your favorite restaurants.

# Current status

At the moment we have the Restaurant and Dish model.
The Restaurant has a name, an address and a kitchen type (japanese, italian, vietnamese...).

The Dish model has:
- restaurant_id
- price: decimal
- dish_type (0 for Meat, 1 for Vegetarian, 2 for Vegan)
- gluten_free: boolean

# Next steps

## Kitchen type on dishes

It would be nice to filter all the restaurants that offer vegan dishes.
