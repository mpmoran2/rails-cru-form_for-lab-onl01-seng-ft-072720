class ArtistsController < ApplicationController

    def index

    end

    def new
        @artist = Artist.new
    end

    def create
        @artist = Artist.new(artist_params)
        @artist.save
        redirect_to @artist
    end

    def edit
        find_artist
    end

    def update
        find_artist
        @artist.update(artist_params)
        redirect_to @artist
    end

    def show
        find_artist
    end



    private

    def find_artist
        @artist = Artist.find_by(id: params[:id])
    end

    def artist_params
        params.require(:artist).permit(:name, :bio)
    end
end