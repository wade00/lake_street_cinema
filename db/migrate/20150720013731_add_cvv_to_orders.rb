class AddCvvToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :cvv, :string
  end
end
