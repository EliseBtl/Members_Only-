Rails.application.routes.draw do
  get 'users/new'

  root   'static_pages#home'

  #Create a sessions_controller.rb and the corresponding routes. Make "sign in" links in the layout as necessary.
  get    '/signup',  to: 'users#new'
  post   '/signup',  to: 'users#create'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  resources :users
end


