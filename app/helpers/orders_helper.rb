module OrdersHelper
  def ticket_price(showtime)
    case
    when showtime.start_time.hour <= 11
      return 7.5
    when showtime.start_time.hour > 11 && showtime.start_time.hour < 18
      return 10
    when showtime.start_time.hour >= 18
      return 9
    end
  end

  def order_subtotal(showtime, num_of_tickets)
    ticket_price(showtime) * num_of_tickets.to_i
  end

  def order_tax(showtime, num_of_tickets)
    order_subtotal(showtime, num_of_tickets) * 0.1
  end

  def order_total(showtime, num_of_tickets)
    order_subtotal(showtime, num_of_tickets) + order_tax(showtime, num_of_tickets)
  end
end
