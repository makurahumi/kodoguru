Rails.application.routes.draw do

  devise_for :users
  
  root "restaurants#index"
  resources :restaurants
  
  resources :menus

  resources :users, only: [:show, :edit, :update]
end
