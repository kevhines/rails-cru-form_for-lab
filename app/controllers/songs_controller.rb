class SongsController < ApplicationController

    
    def show
        @song = Song.find_by_id([params[:id]])
    end

    def new
        @song = Song.new
    end

    def index
        @songs = Song.all
    end

    def edit
        @song = Song.find_by_id([params[:id]])
    end

    def create
        song = Song.create(song_params)
        redirect_to song_path(song)
    end

    def update
        song = Song.find_by_id([params[:id]])
        song.update(song_params)
        redirect_to song_path(song)
    end

    private

def song_params
  params.require(:song).permit(:name, :artist_id, :genre_id)
end 

end