class CinemasController < ApplicationController

  def index
    cinemas = Cinema.all
    render json: cinemas
  end

end
