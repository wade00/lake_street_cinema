require 'test_helper'

class MovieHelperTest < ActionView::TestCase
  include MoviesHelper

  # These may have to be moved to integration test so I can actually submit a form to fill the age_params_hash

  # test "verify age modal appears for r and pg13" do
  #   age_params_hash = params[movies_path(movies(:forrest_gump).id, showtimes(:today_showtime).id)]
  #   movie = movies(:forrest_gump)
  #   assert_equal "PG-13", movie.rating
  # end

  # test "age check passes for r movie if age is seventeen or over" do
  #   age_params_hash = params[movies_path(movies(:interstellar).id, showtimes(:today_showtime).id)]
  #   assert_not_nil age_params_hash
  #   age_day = 1
  #   age_month = 1
  #   age_year = Time.now.year - 16.years
  #   assert_equal age_check_passes?(movies(:interstellar), showtimes(:today_showtime).id), false
  # end

  # test "age check passes for pg13 movie if age is thirteen or over" do
  #   age_params_hash = params[movies_path(movies(:forrest_gump).id, showtimes(:today_showtime).id)]
  #   assert_not_nil age_params_hash
  #   age_day = 1
  #   age_month = 1
  #   age_year = Time.now.year - 12.years
  #   assert_equal age_check_passes?(movies(:forrest_gump), showtimes(:today_showtime).id), false
  # end
end
