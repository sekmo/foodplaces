class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show, :edit, :update, :destroy]

  def index
    @restaurants = Restaurant.all
  end

  def show
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      flash[:notice] = "The restaurant has been added successfully."
      redirect_to restaurants_url
    else
      flash.now[:alert] = "Error in the creation of the restaurant."
      render "new"
    end
  end

  def edit
  end

  def update
    if @restaurant.update_attributes(restaurant_params)
      flash[:notice] = "The restaurant has been updated."
      redirect_to @restaurant
    else
      render "edit"
    end
  end


  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def restaurant_params
    params.require(:restaurant).permit(:name, :kitchen_type, :address)
  end
end
