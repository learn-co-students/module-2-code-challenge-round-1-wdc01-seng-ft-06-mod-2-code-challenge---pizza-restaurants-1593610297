class Restaurant < ApplicationRecord
    has_many :restaurant_pizzas 
    has_many :pizzas, through: :restaurant_pizzas
    validates :name, presence: true, uniqueness: true 
    validates :address, presence: true
end
