class Pizza < ApplicationRecord
  has_many :restaurant_pizzas
  has_many :restaurants, through: :restaurant_pizzas
  validates :name, :ingredients, presence: true
  validates :name, uniqueness: true

  def restaurant_count
    self.restaurants.count
  end
   

end
