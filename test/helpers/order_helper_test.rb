require 'test_helper'

class OrderHelperTest < ActionView::TestCase
  include OrdersHelper

  test "ticket price changes based on time of day" do
    showtime1 = Showtime.new(start_time: "11:00")
    assert_equal 7.5, ticket_price(showtime1)

    showtime2 = Showtime.new(start_time: "17:00")
    assert_equal 10, ticket_price(showtime2)

    showtime3 = Showtime.new(start_time: "18:00")
    assert_equal 9, ticket_price(showtime3)
  end

  test "order subtotal equals ticket price method times number of tickets" do
    showtime = Showtime.new(start_time: "12:00")
    assert_equal 40, order_subtotal(showtime, 4)
  end

  test "order tax equals chicago tax rate times subtotal" do
    showtime = Showtime.new(start_time: "12:00")
    assert_equal 3.90, order_tax(showtime, 4)
  end

  test "order total equals subtotal plus tax" do
    showtime = Showtime.new(start_time: "12:00")
    assert_equal 43.90, order_total(showtime, 4)
  end
end
