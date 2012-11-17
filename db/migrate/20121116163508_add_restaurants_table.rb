class AddRestaurantsTable < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :cuisine
      t.text :address
      t.timestamps
    end
  end
end
