class CreateJoinTableBookingPackage < ActiveRecord::Migration[5.0]
  def change
    create_join_table :bookings, :packages do |t|
       t.index [:booking_id, :package_id]
      # t.index [:package_id, :booking_id]
    end
  end
end
