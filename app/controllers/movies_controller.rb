class MoviesController < ApplicationController
  before_action :set_movie, only: [:show]

  def index
    @movies = Movie.order(:title)
    if params[movies_path]
      date = params[movies_path][:date].to_datetime
      @showtimes = Showtime.where(start_time: ((date.beginning_of_day)..(date.end_of_day)))
    else
      @showtimes = Showtime.where(start_time: ((Date.today.beginning_of_day)..(Date.today.end_of_day)))
    end
  end

  def show
  end

  private
    def set_movie
      @movie = Movie.find(params[:id])
    end
end
