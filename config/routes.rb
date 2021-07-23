Rails.application.routes.draw do
  resources :bicycles do
  resources :payments, only: [:create , :update]
  end
  resources :users 

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/login", to: "sessions#login", as: "login"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#logout", as: "logout"

  scope '/checkout' do
    post 'create', to: 'checkout#create', as: 'checkout_create'
    get 'cancel', to: 'checkout#cancel', as: 'checkout_cancel'
    get 'success', to: 'checkout#success', as: 'checkout_success'
  end


  





end
