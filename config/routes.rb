Rails.application.routes.draw do

  get '/login',  to: 'sessions#new'
  get '/register', to: 'users#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  resources :users
end
