class CreateShowtimes < ActiveRecord::Migration
  def change
    create_table :showtimes do |t|
      t.datetime :start_time
      t.references :theater, index: true
      t.references :movie, index: true

      t.timestamps null: false
    end
    add_foreign_key :showtimes, :theaters
    add_foreign_key :showtimes, :movies
  end
end
