class SessionController < ApplicationController
  def new
  end

  def create
     @user = User.find_by(username: params[:username])
        if @user && @user.authenticate(params[:password])
            session[:user_id] = @user.id
            redirect_to user_path(@user)
        else
          flash[:errors] = "incorrect username or password"
          redirect_to '/login'
        end 
    end 

  def destroy
    session[:user_id] = nil
  end

#Artists

  def artist_new
  end

  def artist_create
     @artist = Artist.find_by(username: params[:username])
        if @artist && @artist.authenticate(params[:password])
            session[:artist_id] = @artist.id
            redirect_to artist_path(@artist)
        else
          flash[:errors] = "incorrect username or password"
          redirect_to '/artists/login'
        end 
    end 

  def artist_destroy
    session[:user_id] = nil
  end
end
