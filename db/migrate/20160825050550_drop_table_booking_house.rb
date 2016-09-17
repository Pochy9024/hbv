class DropTableBookingHouse < ActiveRecord::Migration[5.0]
  def change
    drop_table :bookings_houses
  end
end
