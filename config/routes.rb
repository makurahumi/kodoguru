Rails.application.routes.draw do

  devise_for :users
  
  root "restaurants#index"
  resources :restaurants do
    resources :menus, shallow: true
  end

  resources :users, only: [:show, :edit, :update]
end
