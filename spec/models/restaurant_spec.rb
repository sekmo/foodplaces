require 'rails_helper'

RSpec.describe Restaurant, type: :model do
  it "is geocoded when created" do
    restaurant = create(:restaurant, address: "Mittenwalder Str. 6, 10961 Berlin")
    expect(restaurant.latitude).to be_within(0.000001).of(52.4940247)
    expect(restaurant.longitude).to be_within(0.000001).of(13.3967681)
  end
end
