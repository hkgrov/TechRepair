Rails.application.routes.draw do

  get '/about', to: 'static_pages#about'
  get '/home', to: 'static_pages#home'
  get '/login',  to: 'sessions#new'
  get '/register', to: 'users#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  resources :users
end
