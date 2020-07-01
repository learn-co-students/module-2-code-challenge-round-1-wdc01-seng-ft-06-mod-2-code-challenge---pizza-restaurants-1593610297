class PizzasController < ApplicationController
  def index
    @pizzas = Pizza.all
  end
  def show
    @pizza = Pizza.find(params[:id])
  end
  def new
    @pizza = Pizza.new    
  end
  def create    
    @pizza = Pizza.new(pizza_params)
    if(@pizza.save)
      new_join = RestaurantPizza.create(pizza_id: @pizza.id, restaurant_id: pizza_params[:restaurant_ids])
      redirect_to pizza_path(@pizza)
    else
      render :new
    end

  end

  private
  def pizza_params
    params.require(:pizza).permit(:name,:ingredients,:restaurant_ids)
  end
end
