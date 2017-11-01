class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurants.all
  end

  def show
  end

  def new
  end

  def edit
  end
end
