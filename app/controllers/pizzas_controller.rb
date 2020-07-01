class PizzasController < ApplicationController

  before_action :find_pizza, only: [:show, :destroy]

  def index
    @pizzas = Pizza.all
    #byebug
  end

  def show 
    
  end 

  def new 
    @pizza = Pizza.new
  end 

  def create
    @pizza = Pizza.new(pizza_params)
      if @pizza.save 
        redirect_to pizza_path(@pizza.id)
      else 
        render :new
      end 
  end 

  def edit
  end 

  def update
  end

  def destroy
    @pizza.destroy
    redirect_to pizzas_path
  end 

  private 

  def find_pizza
    @pizza = Pizza.find(params[:id])
  end 

  def pizza_params
    params.require(:pizza).permit(:name, :ingredients, :restaurant_ids)
  end 
end
