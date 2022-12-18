Rails.application.routes.draw do
  devise_for :users

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: "books#index"
  get '/dashboard', to: "pages#dashboard"
  delete "books/:id", to: "pages#destroy", as: :destroy_book
  delete "bookings/:id", to: "pages#destroy", as: :destroy_booking

  resources :books, except: :index do
    resources :bookings, only: :create
  end

  resources :bookings, only: :destroy
end
