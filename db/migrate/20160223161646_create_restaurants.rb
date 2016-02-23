class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :price_range
      t.text :address
      t.string :genre

      t.timestamps null: false
    end
  end
end
