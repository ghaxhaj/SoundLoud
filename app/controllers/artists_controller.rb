class ArtistsController < ApplicationController


    before_action :artist_authorized, except: [:index, :show, :new, :create]

    
    def index
        @artists = Artist.all   
    end

    def profile 
        @artist = current_artist
    end
    
    def show
        @artist = Artist.find(params[:id])
        if @artist == current_artist
        redirect_to artist_profile_path
    end
end

    def new
        @artist = Artist.new 
    end

    def create
        @artist = Artist.create(artist_params)
        session[:artist_id] = @artist.id
        if @artist.valid?
        redirect_to artist_profile_path(@artist)
        else 
        flash[:errors] = @artist.errors.full_messages
        redirect_to new_artist_path
        end
    end

    def edit
        @artist = current_artist
    end

    def update
        @artist = current_artist
        @artist.update(artist_params)
        if @artist.valid?
        redirect_to artist_profile_path(@artist.id)
    else 
        flash[:errors] = @artist.errors.full_messages
        redirect_to new_artist_path
        end
    end

    def destroy 
        @artist = current_artist
        @artist.destroy
        redirect_to "/"
    end 



    private

    def artist_params
        params.require(:artist).permit(:name, :bio, :location, :img_url, :genre, :awards, :username, :password)
    end

 
end