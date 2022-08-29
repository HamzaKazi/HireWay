Rails.application.routes.draw do
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :boats do
    resources :bookings, only: [ :new, :create ]
    resources :reviews, only: [ :new, :create ]
  end
  # Defines the root path route ("/")
  # root "articles#index"
end
