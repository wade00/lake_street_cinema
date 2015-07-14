class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.references :showtime, index: true
      t.references :order, index: true
      t.references :theater, index: true

      t.timestamps null: false
    end
    add_foreign_key :tickets, :orders
    add_foreign_key :tickets, :showtimes
    add_foreign_key :tickets, :theaters
  end
end
