class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show,:edit]
  def index
    @restaurants = Restaurant.all
  end
  def show
   
  end
  def edit
    
  end
  def update
    @restaurant = Restaurant.create(r_params)
    redirect_to restaurant_path(@restaurant)
  end
  private
  def r_params
    params.require(:restaurant).permit(:name,:address,:pizza_ids => [])
  end
  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end
end
