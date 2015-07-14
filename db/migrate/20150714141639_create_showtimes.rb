class CreateShowtimes < ActiveRecord::Migration
  def change
    create_table :showtimes do |t|
      t.time :start_time
      t.references :theater, index: true

      t.timestamps null: false
    end
    add_foreign_key :showtimes, :theaters
  end
end
