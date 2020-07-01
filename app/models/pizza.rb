class Pizza < ApplicationRecord
    has_many :restaurant_pizzas
    has_many :restaurants, through: :restaurant_pizzas

    validates :name, presence:true, uniqueness: { 
        case_sensitive: false,
        message: "be original, %{value} already exists." }
    validates :ingredients, presence:true
end
