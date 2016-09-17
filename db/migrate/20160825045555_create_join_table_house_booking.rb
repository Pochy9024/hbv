class CreateJoinTableHouseBooking < ActiveRecord::Migration[5.0]
  def change
    create_join_table :houses, :bookings do |t|
       t.index [:house_id, :booking_id]
      # t.index [:booking_id, :house_id]
    end
  end
end
