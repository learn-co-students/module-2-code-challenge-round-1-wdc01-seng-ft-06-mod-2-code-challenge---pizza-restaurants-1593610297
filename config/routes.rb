Rails.application.routes.draw do
  resources :pizzas, only: [:index, :show, :new, :create]
  resources :restaurants, only: [:index, :show, :edit, :update]
  
end
