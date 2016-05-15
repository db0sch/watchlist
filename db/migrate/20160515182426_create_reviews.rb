class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.text :description
      t.string :author
      t.integer :stars
      t.references :movie, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
