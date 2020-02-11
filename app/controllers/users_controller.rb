class UsersController < ApplicationController
    before_action :authorized, except: [:new, :create]
    def index 
        @users = User.all
    end

    def show 
        @user = current_user
        @songs = @user.songs
        @artists = @user.artists
    end

    def new
        @user = User.new
    end 

    def create
        @user = User.create(user_params)
        session[:user_id] = @user.id
        if @user.valid?
        redirect_to user_path(@user)
        else 
        flash[:error] = @user.errors.full_messages
        redirect_to new_user_path
        end
    end

    def edit
        @user = current_user
    end

    def update
        @user = current_user
        @user.update(user_params)
        if @user.valid?
        redirect_to user_path(@user)
        else
        flash[:error] = @user.errors.full_messages
        redirect_to edit_user_path
        end
    end

    def destroy
        @user = current_user
        @user.destroy
        redirect_to users_path
    end 

    private
    
    def user_params
        params.require(:user).permit(:name, :username, :password, :email)
    end
end
