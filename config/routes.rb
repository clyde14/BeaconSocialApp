Rails.application.routes.draw do
  resources :signal_posts, only: [:create, :destroy]
  resources :users
  
  get 'welcome/index'
  root 'welcome#index'
  
  get '/signup', to: 'users#new'
  
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
end
