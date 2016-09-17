class CreateHouses < ActiveRecord::Migration[5.0]
  def change
    create_table :houses do |t|
      t.string :name
      t.string :location
      t.float :price
      t.integer :rooms
      t.integer :people_per_room

      t.timestamps
    end
  end
end
