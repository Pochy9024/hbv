class AddHouseIdToBooking < ActiveRecord::Migration[5.0]
  def change
    add_column :bookings, :house_id, :integer
  end
end
