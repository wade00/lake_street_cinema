require 'test_helper'

class ShowtimeHelperTest < ActionView::TestCase
  include ShowtimesHelper

  test "start time should be converted into strftime" do
    showtime1 = Showtime.new(start_time: "11:00")
    assert_equal "11:00am", to_strftime(showtime1)

    showtime2 = Showtime.new(start_time: "13:00")
    assert_equal "1:00pm", to_strftime(showtime2)
  end

  test "sold out returns true is seats remaining equals zero" do
    showtime = showtimes(:today_showtime)
    order = orders(:dereks_order)
    assert sold_out(showtime)
  end
end
