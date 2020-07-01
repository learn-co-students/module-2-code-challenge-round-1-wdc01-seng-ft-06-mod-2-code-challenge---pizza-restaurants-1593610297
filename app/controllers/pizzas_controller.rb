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
    if @pizza.valid?
      RestaurantPizza.create(restaurant_id: params[:pizza][:restaurant_name], pizza_id: @pizza.id)
      @pizza.save
      redirect_to pizza_path(@pizza.id)
    else
      render :new
    end
  end
  
  private

  def pizza_params
    params.require(:pizza).permit(:name, :ingredients, :restaurant_name)
  end
end
