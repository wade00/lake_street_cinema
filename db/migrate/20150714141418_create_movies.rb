class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.string :year
      t.string :director
      t.integer :runtime
      t.string :genre
      t.string :rating
      t.text :synopsis
      t.string :image
      t.references :theater, index: true

      t.timestamps null: false
    end
    add_foreign_key :movies, :theaters
  end
end
