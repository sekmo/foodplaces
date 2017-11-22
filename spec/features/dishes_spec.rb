require 'rails_helper'

RSpec.feature "Dishes", type: :feature do
  scenario "User can check the dishes of a restaurant after clicking on a restaurant on index" do
    hamburger_restaurant = create(:restaurant, name: "Crusty burgers & Co.",
                            kitchen_type: "Hamburgers and Bagels",
                            address: "Mittenwalder Str. 6, 10961 Berlin")
    create(:dish, restaurant: hamburger_restaurant, name: "Busty Burger")
    create(:dish, restaurant: hamburger_restaurant, name: "Mighty Bagel")
    visit restaurants_path
    click_link("Crusty burgers & Co.")
    expect(page).to have_content "Crusty burgers & Co."
    expect(page).to have_content "Busty Burger"
    expect(page).to have_content "Mighty Bagel"
  end

  scenario "User can add a new dish from New Restaurant page" do
    visit new_restaurant_path
    fill_in "Name", with: "Fishes and Co."
    fill_in "Address", with: "Hufelandstraße 20, 10407 Berlin"
    fill_in "Kitchen", with: "Fish"
    fill_in "New dish", with: "Fish and chips"
    fill_in "Price", with: "8"
    click_button "Create Restaurant"
    visit restaurants_path
    click_link("Fishes and Co.")
    expect(page).to have_content "Fish and chips"
  end

  scenario "User can add multiple dishes from New Restaurant page", js: true do
    visit new_restaurant_path
    fill_in "Name", with: "Fishes and Co."
    fill_in "Address", with: "Hufelandstraße 20, 10407 Berlin"
    fill_in "Kitchen", with: "Fish"
    fill_in "New dish", with: "Fish and chips"
    fill_in "Price", with: "8"
    click_link "Add dish"
    new_dish_form = page.all(".dish-form")[1]
    within(new_dish_form)  do
      fill_in "New dish", with: "Fish steak"
      fill_in "Price", with: "10"
    end
    click_button "Create Restaurant"
    visit restaurants_path
    click_link("Fishes and Co.")
    expect(page).to have_content "Fish and chips"
  end
end
