Rails.application.routes.draw do
  resources :bicycles do
  resources :payments, only: [:create , :update , :index]
  end
  resources :users 

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/login", to: "sessions#login", as: "login"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#logout", as: "logout"
  get "/auth/:provider/callback", to: "sessions#omniauth"

  scope '/checkout' do
    get 'success', to: 'checkout#success', as: 'checkout_success'
    post 'card', to: 'checkout#card', as: 'checkout_card'
  end


  





end
