class GenresController < ApplicationController

    
    def show
        @genre = Genre.find_by_id([params[:id]])
    end

    def new
        @genre = Genre.new
    end

    def index
        @genres = Genre.all
    end

    def edit
        @genre = Genre.find_by_id([params[:id]])
    end

    def create
        genre = Genre.create(genre_params)
        redirect_to genre_path(genre)
    end

    def update
        genre = Genre.find_by_id([params[:id]])
        genre.update(genre_params)
        redirect_to genre_path(genre)
    end

    private

def genre_params
  params.require(:genre).permit(:name)
end 

end