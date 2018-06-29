class GenresController < ApplicationController
<<<<<<< HEAD

  def show
    @genre = Genre.find(params[:id])
  end

  def new
    @genre = Genre.new
  end

  def create
    @genre = Genre.create(params.require(:genre))
    redirect_to song_path(@genre)
  end

  def edit
    @genre = Genre.find(params[:id])
  end

  def update
    @genre = Genre.find(params[:id])
    @genre = Genre.update(params.require(:genre))
    redirect_to song_path(@genre)
  end

=======
  has_many :songs
>>>>>>> ef99eb6127a2f12d6b2fdbbea0196c88aa9b61a5
end
