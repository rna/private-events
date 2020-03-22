Rails.application.routes.draw do
  root to: 'sessions#new'

  get '/signup', to: 'users#new'
  # get '/profile', to: 'users#show:id'
  get '/signin', to: 'sessions#new'
  post '/signin', to: 'sessions#create'
  delete '/signout', to: 'sessions#destroy'
  resources :users, only: %i[new create show]
end
