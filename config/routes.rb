Rails.application.routes.draw do

  root to: 'sessions#new'

  get '/signup', to: 'users#new'
  get '/signin', to: 'sessions#new'
  post '/signin', to: 'sessions#create'
  delete '/signout', to: 'sessions#destroy'

  resources :invitations, only: %i[new create]
  resources :users, only: %i[new create show]
  resources :events, only: %i[index new create show]

end
