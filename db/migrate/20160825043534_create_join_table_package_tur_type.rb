class CreateJoinTablePackageTurType < ActiveRecord::Migration[5.0]
  def change
    create_join_table :packages, :tur_types do |t|
       t.index [:package_id, :tur_type_id]
      # t.index [:tur_type_id, :package_id]
    end
  end
end
