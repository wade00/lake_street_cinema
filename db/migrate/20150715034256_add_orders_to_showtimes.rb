class AddOrdersToShowtimes < ActiveRecord::Migration
  def change
    add_reference :showtimes, :order, index: true
    add_foreign_key :showtimes, :orders
  end
end
