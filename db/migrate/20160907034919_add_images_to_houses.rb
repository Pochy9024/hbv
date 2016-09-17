class AddImagesToHouses < ActiveRecord::Migration[5.0]
  def change
    add_column :houses, :images, :json
  end
end
