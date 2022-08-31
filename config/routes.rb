Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
  resources :vehicles, except: [:edit, :update] do
    resources :pages, only: [:new, :create]
    resources :bookings, only: :create
    resources :vehicles, :yachts
  end
  resources :vehicles, only: [:destroy, :index, :yachts]
  resources :bookings, only: [:destroy, :index, :show]
  resources :beds, only: [:index, :new, :show]
end
