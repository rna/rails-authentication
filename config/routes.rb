Rails.application.routes.draw do

  resources :posts, only: [:new, :create, :index]
  root 'posts#index'
  
  resources :users, only: [:new, :create]

  get   '/signup',  to: 'users#new'
  get   '/login',   to: 'sessions#new'
  post  '/login',   to: 'sessions#create'
  delete '/logout', to: 'sessions#delete' 
end
