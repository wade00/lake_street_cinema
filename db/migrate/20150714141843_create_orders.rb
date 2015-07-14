class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :email
      t.string :credit_card
      t.references :theater, index: true
      t.references :showtime, index: true

      t.timestamps null: false
    end
    add_foreign_key :orders, :showtimes
    add_foreign_key :orders, :theaters
  end
end
