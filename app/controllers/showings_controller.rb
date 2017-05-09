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

end