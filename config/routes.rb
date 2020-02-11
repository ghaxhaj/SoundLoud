Rails.application.routes.draw do
  resources :songs, only: [:new, :create, :delete]
  resources :artists
  

  get 'session/new'
  get 'session/create'
  get 'session/destroy'

  get '/users', to: 'users#index', as: "users"
  get '/signup', to: 'users#new', as: "new_user"
  post '/users', to: 'users#create'
  get '/profile', to: 'users#show', as: "user"
  #get '/edit', to: 'users#edit', as: "edit_user"
  #patch '/edit', to: 'users#update'
  #delete '/', to: 'users#destroy'
  

  get '/login', to: 'session#new'
  post '/sessions', to: 'session#create'
  delete '/logout', to: 'session#destroy'

 


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
