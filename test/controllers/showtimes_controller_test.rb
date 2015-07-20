require 'test_helper'

class ShowtimesControllerTest < ActionController::TestCase
  test "should get show" do
    get :show, { movie_id: movies(:interstellar).id, id: showtimes(:tomorrow_showtime).id }
    assert_response :success
    assert_not_nil assigns(:movie)
    assert_not_nil assigns(:showtime)
  end
end
