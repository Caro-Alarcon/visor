class DocumentaryfilmsController < ApplicationController
  def index
    @documentaryFilms = DocumentaryFilm.all
  end

  def new
    @documentaryFilm = DocumentaryFilm.new
  end

  def create
    @documentaryFilm = DocumentaryFilm.new(documentaryfilm_params)

    if @documentaryFilm.save
      redirect_to documentaryfilms_index_path
      else
      render :new
      end
  end

  private

  def documentaryfilm_params
  params.require(:documentaryfilm).permit(:name, :director, :synopsis)
  end
end
