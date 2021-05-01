Rails.application.routes.draw do
  devise_for :users, controllers: {omniauth_callbacks: 'omniauth'}
  # 'omniauth' name comes from omniauth_controller.rb

  resources :comments
  resources :books
  resources :clubs

  root to: 'welcome#index'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end