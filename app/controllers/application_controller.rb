class ApplicationController < ActionController::Base
    

    def current_user
        if session[:user_id]
            User.find(session[:user_id])
        end
    end

    def user_logged_in?
        current_user
    end

    def user_authorized
       redirect_to "/login" unless user_logged_in?
    end

    #Artist
    
    def current_artist
        if session[:artist_id]
            Artist.find(session[:artist_id])
        end
    end

    def artist_logged_in?
        current_artist
    end

    def artist_authorized
       redirect_to "/artists/login" unless artist_logged_in?
    end

end

