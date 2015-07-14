class AddCreditCardInfotoOrders < ActiveRecord::Migration
  def change
    add_column :orders, :card_expiration_month, :string
    add_column :orders, :card_expiration_year, :string
    add_column :orders, :street_address, :string
    add_column :orders, :city, :string
    add_column :orders, :state, :string
    add_column :orders, :zip_code, :string
    add_column :orders, :country, :string
  end
end
