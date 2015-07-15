class ShowtimesController < ApplicationController
  def show
    @showtime = Showtime.find(params[:id])
    @movie = Movie.find(params[:movie_id])
  end
end
