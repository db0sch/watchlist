class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.integer :duration
      t.integer :year
      t.text :synopsis
      t.string :director

      t.timestamps null: false
    end
  end
end
