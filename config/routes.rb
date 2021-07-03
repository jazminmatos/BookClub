Rails.application.routes.draw do
  root to: 'welcome#index'
  get '/about' => 'welcome#about'

  #renders the club w/ the most books
  #poppin
  #routes => controller (club) => club model (scope method) => controller => view file
  get '/poppin' => 'clubs#poppin'

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

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end