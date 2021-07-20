Rails.application.routes.draw do
  resources :bicycles
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/login", to: "sessions#login", as: "login"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#logout", as: "logout"
  get "about" , to: "bicycles#about"
  post "/bicycles/add_to_cart/:id", to: "bicycles#add_to_cart", as: "add_to_cart"
  delete "/bicycles/remove_from_cart/:id", to: "bicycles#remove_from_cart" , as: "remove_from_cart"
  root to: "bicycles#index"




end
