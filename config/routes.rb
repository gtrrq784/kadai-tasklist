Rails.application.routes.draw do
  
  get 'signup', to: 'users#new'

  get 'users/create'
  
  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/destroy'
  
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  root to: 'tasks#index'
  
  resources :tasks
  
  resources :users, only: [:index, :show, :new, :create]
  
end
