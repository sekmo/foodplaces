require 'rails_helper'

RSpec.feature "Restaurants", type: :feature do
  before do
    create(:restaurant, name: "Crusty hamburgers",
                        description: "Hamburgers and Bagels",
                        address: "Mittenwalder Str. 6, 10961 Berlin")
    create(:restaurant, name: "Da Mario")
    create(:restaurant, name: "Der alte Fritz")
  end

  scenario "User gets a list of restaurants" do
    visit restaurants_path
    expect(page).to have_content "Crusty hamburgers"
    expect(page).to have_content "Da Mario"
    expect(page).to have_content "Der alte Fritz"
  end

  scenario "User can see the details of a restaurant" do
    visit restaurants_path
    restaurant_list_item = find("li", text: "Crusty hamburgers")
    restaurant_link = restaurant_list_item.first(:xpath, ".//..")
    restaurant_link.click
    expect(page).to have_content "Crusty hamburgers"
    expect(page).to have_content "Mittenwalder Str. 6, 10961 Berlin"
    expect(page).to have_content "Hamburgers and Bagels"
  end

  xscenario "User can see the average price of the dishes" do
  end
end
