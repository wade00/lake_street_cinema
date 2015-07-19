require 'test_helper'

class ShowtimeHelperTest < ActionView::TestCase
  include ShowtimesHelper

  test "start time should be converted into strftime" do
    showtime1 = Showtime.new(start_time: "2015-07-19 11:00:00")
    assert_equal "Sunday 11:00am", format_showtime(showtime1)

    showtime2 = Showtime.new(start_time: "2015-07-19 13:00")
    assert_equal "Sunday 1:00pm", format_showtime(showtime2)
  end

  test "sold out returns true is seats remaining equals zero" do
    showtime = showtimes(:today_showtime)
    order = orders(:dereks_order)
    assert sold_out(showtime)
  end
end
