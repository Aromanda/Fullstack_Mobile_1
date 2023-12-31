Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root "home#index"
  resources :employees
  
  # API
  namespace :api do
    post "login", to: "auth#index"
    get "restaurants", to: "restaurants#index"
    get "products", to: "products#index"
    get "orders", to: "orders#index"
    post "orders", to: "orders#create"
    post "order/:id/status", to: "orders#set_status"
    post "order/:id/rating", to: "orders#set_rating"
  end
end
