Rails.application.routes.draw do
  resources :songs, only: [:new, :create, :delete]

  
  get '/', to: 'welcome#home'

  #USER
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

  #Artists
  get 'session/artist_new'
  get 'session/artist_create'
  get 'session/artist_destroy'

  get '/artists', to: 'artists#index'
  get '/artists/signup', to: 'artists#new', as: "new_artist"
  post '/artists', to: 'artists#create'
  get '/artists/profile', to: 'artists#show', as: "artist"
  get '/artists/delete', to: 'artists#destroy'
  #get '/artists/edit' to: 'artists#edit' 

  get '/artists/login', to: 'session#artist_new'
  post '/artists/sessions', to: 'session#artist_create'
  delete '/artists/logout', to: 'session#artist_destroy'

  #Song
  # get '/songs/new', to: 'songs#new', as: "new_song"


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
