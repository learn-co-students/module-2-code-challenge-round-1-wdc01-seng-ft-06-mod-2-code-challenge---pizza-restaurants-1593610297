Rails.application.routes.draw do
  resources :restaurants, only: [:show,:index,:edit,:update]
  resources :pizzas, only: [:show,:index,:new,:create]
end
