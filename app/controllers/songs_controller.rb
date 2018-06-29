class SongsController < ApplicationController

<<<<<<< HEAD
  def index
    @songs = Song.all
  end

  def show
    @song = Song.find(params[:id])
    @artist = Artist.find(@song.artist_id)
    @genre = Genre.find(@song.genre_id)
=======
  def show
    @song = Song.find(params[:id])
>>>>>>> ef99eb6127a2f12d6b2fdbbea0196c88aa9b61a5
  end

  def new
    @song = Song.new
  end

  def create
<<<<<<< HEAD
    @song = Song.create(params.require(:song).permit(:name, :artist, :genre))
    redirect_to song_path(@song)
=======
    @song = Song.create(params.require(:songs).permit(:name, :artist_id, :genre_id))
>>>>>>> ef99eb6127a2f12d6b2fdbbea0196c88aa9b61a5
  end

  def edit
    @song = Song.find(params[:id])
  end

  def update
    @song = Song.find(params[:id])
<<<<<<< HEAD
    @song = Song.update(params.require(:song).permit(:name))
    redirect_to song_path(@song)
=======
    @song = Song.update(params.require(:songs).permit(:name, :artist_id, :genre_id))
>>>>>>> ef99eb6127a2f12d6b2fdbbea0196c88aa9b61a5
  end

end
