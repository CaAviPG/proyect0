Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # root to: 'vehicles#home'
  root to: "vehicles#home"
  get "vehicles", to: "vehicles#home"
  get "vehicles/index", to: "vehicles#index"

  resources :vehicles do
    resources :bookings, only: [ :new, :create ]
  end
end
