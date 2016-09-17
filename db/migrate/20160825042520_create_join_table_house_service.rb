class CreateJoinTableHouseService < ActiveRecord::Migration[5.0]
  def change
    create_join_table :houses, :services do |t|
       t.index [:house_id, :service_id]
      # t.index [:service_id, :house_id]
    end
  end
end
