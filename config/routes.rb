Rails.application.routes.draw do

  devise_for :users
  
  root "restaurants#index"
  resources :restaurants do
    resources :menus do
      collection do
        post "/restaurants/menus/create", to: "menus#create"
    end
  end
end
  resources :users, only: [:show, :edit, :update]
end
