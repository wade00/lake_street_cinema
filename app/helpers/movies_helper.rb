module MoviesHelper
  def verify_age(movie, showtime_id)
    age_params_hash = params[movie_showtime_path(movie.id, showtime_id)]
    if age_params_hash.nil?
      movie.rating == "R" || movie.rating == "PG-13" ? true : false
    end
  end

  def age_check_passes?(movie, showtime_id)
    age_params_hash = params[movie_showtime_path(movie.id, showtime_id)]
    if age_params_hash.nil?
      return true
    else
      birthdate_array = []
      age_day = age_params_hash[:age_day]
      age_month = age_params_hash[:age_month]
      age_year = age_params_hash[:age_year]
      birthdate_array << age_day << age_month << age_year
      birthdate_time = birthdate_array.join("/").to_time

      case movie.rating
      when "PG-13"
        13.years.ago.to_time < birthdate_time ? false : true
      when "R"
        17.years.ago.to_time < birthdate_time ? false : true
      end
    end
  end
end


# if verify_age is true, then add a field to enter age in the new order form. if time.now - the calender date selected is > 13 for PG-13 then give error message. If it's > 17 for R also give error message.
