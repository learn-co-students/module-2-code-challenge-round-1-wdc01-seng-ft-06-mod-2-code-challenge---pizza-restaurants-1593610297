class Pizza < ApplicationRecord
    has_many :restaurant_pizzas
    has_many :restaurants, through: :restaurant_pizzas
    
    validates :name, presence: true, uniqueness: {case_sensitive: false}
    validates :ingredients, presence: true

    def restaurant_count
        return self.restaurants.count
    end
end
