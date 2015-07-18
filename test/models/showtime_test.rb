require 'test_helper'

class ShowtimeTest < ActiveSupport::TestCase
  test "seats remaining equals theater capacity minus theater showtime tickets" do
    order = orders(:stus_order)
    showtime = order.showtime
    assert_equal 20, showtime.seats_remaining
  end
end
