class CreateBookings < ActiveRecord::Migration[5.0]
  def change
    create_table :bookings do |t|
      t.string :name
      t.string :email
      t.integer :phone
      t.date :day_in
      t.date :day_out
      t.string :country
      t.integer :rooms
      t.integer :persons
      t.boolean :airport_taxi
      t.text :specifications

      t.timestamps
    end
  end
end
