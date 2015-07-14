class AddTicketsToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :tickets, :string
  end
end
