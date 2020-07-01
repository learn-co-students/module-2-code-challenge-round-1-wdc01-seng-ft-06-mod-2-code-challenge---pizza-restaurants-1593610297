class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = find_restaurant
  end

  def edit
    @restaurant = find_restaurant
  end

  def update
    @restaurant = find_restaurant
    @restaurant.update(restaurant_params(:name, :address, :pizza_ids => []))
    if @restaurant.valid?
      @restaurant.save
      redirect_to restaurant_path(@restaurant)
    else
      render :edit
    end
  end

  private

  def find_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def restaurant_params(*args)
    params.require(:restaurant).permit(*args)
  end
end
