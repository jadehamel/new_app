Rails.application.routes.draw do
  resources :desserts
  resources :food_weeks
  resources :meals
  resources :menus
  resources :days
  resources :weeks
  resources :foods
  resources :soups
  resources :dvds
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
