Rails.application.routes.draw do

  devise_for :users
  
  root "restaurants#index"
  resources :restaurants

  resources :users, only: :show
end
