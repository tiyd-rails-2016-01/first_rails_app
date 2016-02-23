class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :stars
      t.integer :restaurant_id
      t.text :comments

      t.timestamps null: false
    end
  end
end
