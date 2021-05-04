Rails.application.routes.draw do
  devise_for :users, controllers: {omniauth_callbacks: 'omniauth'}
  # 'omniauth' name comes from omniauth_controller.rb

  resources :users
  resources :comments
  resources :books

  resources :clubs do
    resources :books, only: [:show, :index, :new, :create, :edit]
  end

  root to: 'welcome#index'
  get '/about' => 'welcome#about'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end