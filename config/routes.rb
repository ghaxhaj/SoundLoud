Rails.application.routes.draw do
  # resources :songs, only: [:new, :create, :delete]

  
  get '/', to: 'welcome#home'

#   #USER
  get 'session/user_new'
  get 'session/user_create'
  get 'session/user_destroy'

#   # -------------------
  get '/users', to: 'users#index', as: "users"
  get '/user/signup', to: 'users#new', as: "new_user"
  post '/user', to: 'users#create'
  get '/user/profile', to: 'users#show', as: "user_profile"
# # -------------------

#   #get '/edit', to: 'users#edit', as: "edit_user"
#   #patch '/edit', to: 'users#update'
#   #delete '/', to: 'users#destroy'


#   # --------------
  get '/user/login', to: 'session#user_new'
  post '/user/session', to: 'session#user_create'
  delete '/user/logout', to: 'session#user_destroy'
# # --------------------

#   #Artists
#   # get 'session/artist_new'
#   # get 'session/artist_create'
#   # get 'session/artist_destroy'

#   # --------------
  get '/artists', to: 'artists#index'
  get '/artists/signup', to: 'artists#new', as: "new_artist"
  post '/artists', to: 'artists#create'
  get '/artists/profile', to: 'artists#show', as: "artist"
  get '/artists/delete', to: 'artists#destroy'
# # ---------------

#   #get '/artists/edit' to: 'artists#edit' 

#   # --------
  get '/artists/login', to: 'session#artist_new'
  post '/artists/sessions', to: 'session#artist_create'
  delete '/artists/logout', to: 'session#artist_destroy'
# -------------

  #Song
  # get '/songs/new', to: 'songs#new', as: "new_song"


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
