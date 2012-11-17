class AddDishesTable < ActiveRecord::Migration
  def change
    create_table :dishes do |t|
      t.string :name
      t.decimal :cost
      t.string :photo
      t.integer :restaurant_id
      t.timestamps
    end
  end
end
