class SongsController < ApplicationController

    def new 
        @song = Song.new
    end

    def create 
        @song = Song.create(song_params)
        redirect_to artist_profile_path(@song.artist_id)
    end

    private

    def song_params
        params.permit(:artist_id, :name, :audio_file)
    end

end
