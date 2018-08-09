Rails.application.routes.draw do
  root to: 'moos#index'

  resources :moos
  resources :users 
  get '/moos/:id/reply' => 'moos#reply', as: :reply
  post '/moos/:id/like' => 'moos#like', as: :like
  get '/login' => 'users#login', as: :login
  post '/login' => 'users#start_session'
  get '/logout' => 'users#logout', as: :logout
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
