require 'rails_helper'

RSpec.feature "Restaurants", type: :feature do
  scenario "User can add a new dish from New Restaurant page" do
    visit new_restaurant_path
    fill_in "Name", with: "Fishes and Co."
    fill_in "Address", with: "Hufelandstraße 20, 10407 Berlin"
    fill_in "Kitchen", with: "Fish"
    fill_in "New dish", with: "Fish and chips"
    fill_in "Price", with: "8"
    click_button "Create Restaurant"
    visit restaurants_path
    restaurant_list_item = find("li", text: "Fishes and Co.")
    restaurant_link = restaurant_list_item.first(:xpath, ".//..")
    restaurant_link.click
    expect(page).to have_content "Fish and chips"
  end
end
