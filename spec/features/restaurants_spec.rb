require 'rails_helper'

RSpec.feature "Restaurants", type: :feature do
  before do
    @hamburger_restaurant = create(:restaurant, name: "Crusty burgers & Co.",
                            kitchen_type: "Hamburgers and Bagels",
                            address: "Mittenwalder Str. 6, 10961 Berlin")
    create(:restaurant, name: "Da Mario")
    create(:restaurant, name: "Der alte Fritz")
  end

  scenario "User gets a list of restaurants with name, address and kitchen type" do
    visit restaurants_path
    expect(page).to have_content "Crusty burgers & Co."
    expect(page).to have_content "Hamburgers and Bagels"
    expect(page).to have_content "Mittenwalder Str. 6, 10961 Berlin"
    expect(page).to have_content "Da Mario"
    expect(page).to have_content "Der alte Fritz"
  end

  scenario "User can add a new restaurant" do
    visit new_restaurant_path
    expect {
      fill_in "Name", with: "Fishes and Co."
      fill_in "Address", with: "Hufelandstraße 20, 10407 Berlin"
      fill_in "Kitchen", with: "Fish"
      click_button "Create Restaurant"
    }.to change { Restaurant.count }.by(1)
    expect(page).to have_content "The restaurant has been added successfully"
    visit restaurants_path
    expect(page).to have_content "Fishes and Co."
  end

  scenario "User can see the dishes of a restaurant after clicking on a restaurant on index" do
    create(:dish, restaurant: @hamburger_restaurant, name: "Busty Burger")
    create(:dish, restaurant: @hamburger_restaurant, name: "Mighty Bagel")
    visit restaurants_path
    restaurant_list_item = find("li", text: "Crusty burgers & Co.")
    restaurant_link = restaurant_list_item.first(:xpath, ".//..")
    restaurant_link.click
    expect(page).to have_content "Crusty burgers & Co."
    expect(page).to have_content "Busty Burger"
    expect(page).to have_content "Mighty Bagel"
  end
end
