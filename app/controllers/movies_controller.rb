class MoviesController < ApplicationController

  def index
    movies = Movie.all
    render json: movies
  end

  def show
    movie = Movie.find(params[:id])
    render json: movie  
  end

  def create
    movie = Movie.create(params.require(:movie).permit([:title]))
    render json: movie
  end

  def destroy
    movie = Movie.find(params[:id])
    if movie.destroy!
      render json: { status: :success }
    else
      render json: { status: :delete_failed }
    end
  end

end