class Pizza < ApplicationRecord
    has_many :restaurant_pizzas
    has_many :restaurants, through: :restaurant_pizzas
    validates :name, presence: true, uniqueness: true 
    validates :ingredients, presence: true 

    def pizza_ings
        self.ingredients.split(",")
    end 
end
