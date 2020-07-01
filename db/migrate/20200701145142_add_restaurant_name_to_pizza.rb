class AddRestaurantNameToPizza < ActiveRecord::Migration[5.1]
  def change
    add_column :pizzas, :restaurant_name, :string
  end
end
