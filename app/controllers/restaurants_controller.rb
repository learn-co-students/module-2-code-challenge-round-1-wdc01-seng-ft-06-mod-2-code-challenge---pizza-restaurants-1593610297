class RestaurantsController < ApplicationController
  before_action :set_restaurant, only:[:show, :edit, :update]

  def index
    @restaurants = Restaurant.all
  end

  def show
  end
  
  def edit

  end

  def update
    @restaurant.update(restaurant_params)
    redirect_to restaurant_path(@restaurant)
  end

  private

  def set_restaurant
    @restaurant= Restaurant.find(params[:id])
  end

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :pizza_ids => [])
  end
end
