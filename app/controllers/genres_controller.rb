class GenresController < ApplicationController
    def index
        
    end

    def new
        @genre = Genre.new
    end

    def create
        @genre = Genre.new(genre_params)
        @genre.save
        redirect_to @genre
    end

    def edit
        find_genre
    end

    def update
        find_genre
        @genre.update(genre_params)
        redirect_to @genre
    end

    def show
        find_genre
    end


    private

    def find_genre
        @genre = Genre.find_by(id: params[:id])
    end

    def genre_params
        params.require(:genre).permit(:name)
    end

end