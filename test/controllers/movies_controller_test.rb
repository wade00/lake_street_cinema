require 'test_helper'

class MoviesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:movies)
    assert_not_nil assigns(:showtimes)
  end
end
