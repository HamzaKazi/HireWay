Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
  resources :vehicles, except: [:edit, :update] do
    resources :pages, only: [:new, :create]
    resources :bookings, only: :create
  end
  resources :vehicles, only: :destroy
  resources :bookings, only: :destroy
end
