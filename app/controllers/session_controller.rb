class SessionController < ApplicationController
  def new
  end

  def create
     @user = User.find_by(username: params[:username])
        if @user && @user.authenticate(params[:password])
            session[:user_id] = @user.id
            redirect_to user_path(@user)
        else
          flash[:errors] = @user.errors.full_messages
          redirect_to new_user_path
        end 
    end 

  def destroy
    session[:user_id] = nil
  end
end
