Rails.application.routes.draw do
  devise_for :users, controllers: {omniauth_callbacks: 'omniauth'}
  # 'omniauth' name comes from omniauth_controller.rb

  resources :users, only: [:show]
  resources :comments, except: [:show, :index]
  resources :books

  resources :clubs, except: [:destroy] do
    resources :books, only: [:index, :new, :create]
  end

  resources :books do 
    resources :comments, only: [:index, :new, :create]
  end

  root to: 'welcome#index'
  get '/about' => 'welcome#about'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end