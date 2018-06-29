class ArtistsController < ApplicationController
<<<<<<< HEAD

  def show
    @artist = Artist.find(params[:id])
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.create(params.require(:artist).permit(:name, :bio))
    redirect_to song_path(@artist)
  end

  def edit
    @artist = Artist.find(params[:id])
  end

  def update
    @artist = Artist.find(params[:id])
    @artist = Artist.update(params.require(:artist).permit(:bio))
    redirect_to song_path(@artist)
  end

=======
  has_many :songs
>>>>>>> ef99eb6127a2f12d6b2fdbbea0196c88aa9b61a5
end
