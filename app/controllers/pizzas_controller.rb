class PizzasController < ApplicationController
  before_action :set_pizza, only:[:show]
  
  def index
    @pizzas = Pizza.all
  end

  def show
  end

  def new
    @pizza = Pizza.new
  end
  
  def create
    @pizza = Pizza.new(pizza_params)
    if @pizza.save
      redirect_to pizza_path(@pizza)
    else
      render :new
    end
  end


  private

  def set_pizza
    @pizza = Pizza.find(params[:id])
  end

  def pizza_params
    params.require(:pizza).permit(:name, :ingredients, :restaurant_ids)
  end
end
