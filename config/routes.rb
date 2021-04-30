Rails.application.routes.draw do
  devise_for :users
  resources :comments
  resources :books
  resources :clubs
  resources :users

  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  post "/logout", to: "sessions#destroy"

  get "/welcome", to: "welcome#index"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end