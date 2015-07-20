class Showtime < ActiveRecord::Base
  belongs_to :theater
  belongs_to :movie
  has_many :orders, dependent: :destroy

  def seats_remaining
    ticket_count = []
    theater_orders = Order.where(theater: self.theater)
    showtime_orders = theater_orders.where(showtime: self.id)

    showtime_orders.each do |order|
      ticket_count << order.tickets.to_i
    end
    tickets_sold = ticket_count.sum

    return self.theater.capacity - tickets_sold

    ticket_count.clear
  end
end
