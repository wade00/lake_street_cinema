class AddMoviesToOrders < ActiveRecord::Migration
  def change
    add_reference :orders, :movie, index: true
    add_foreign_key :orders, :movies
  end
end
