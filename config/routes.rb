Rails.application.routes.draw do
  resources :restaurant_pizzas
  get '/restaurants', to: 'restaurants#index'
  get '/restaurants/:id', to: 'restaurants#show', as: 'restaurant'
  resources :pizzas, only: [:index, :show, :new, :create]
end
