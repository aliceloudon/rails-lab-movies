class ShowingsController < ApplicationController

  def index
    showings = Showing.where({movie: params[:movie_id] })
    render json: showings.as_json({
      only: [:time],
      include: {
        movie: {
          only: [:title]
        },
        cinema: {
          only: [:name, :location]
        }
      }
      })
  end

  def create
    showing = Showing.create({
        movie_id: params[:movie_id],
        cinema_id: params[:cinema_id],
        time: params[:time]
      })
    render json: showing
  end

  def destroy

    showing = Showing.find(params[:id])
    if showing.destroy!
      render json: { status: :success }
    else
      render json: { status: :delete_failed }
    end

  end

end