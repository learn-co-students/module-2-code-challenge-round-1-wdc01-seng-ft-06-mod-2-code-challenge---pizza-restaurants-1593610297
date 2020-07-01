Rails.application.routes.draw do
  resources :restaurants, only: [:index, :show, :edit, :update]
  resources :pizzas, only: [:index, :show, :new, :create]
end
