Rails.application.routes.draw do
  resources :restaurants, only: [:index, :show, :new, :create, :edit, :update]
  resources :pizzas, only: [:index, :show, :new, :create, :destroy]
end
