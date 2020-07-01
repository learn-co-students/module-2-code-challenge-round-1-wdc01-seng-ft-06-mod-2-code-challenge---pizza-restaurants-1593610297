class PizzasController < ApplicationController
  def index
    @pizzas = Pizza.all
  end

  def show
    @pizza = find_pizza
  end

  def new
    @pizza = Pizza.new
  end

  def create
    @pizza = Pizza.new(pizza_params(:name, :ingredients, [:restaurant_ids]))
    if @pizza.valid?
      @pizza.save
      redirect_to pizza_path(@pizza)
    else
      render :new
    end
  end

  private

  def find_pizza
    @pizza = Pizza.find(params[:id])
  end

  def pizza_params(*args)
    params.require(:pizza).permit(*args)
  end
end
