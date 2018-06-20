class AddManufactureToCars < ActiveRecord::Migration[5.2]
  def change
    add_column :cars, :manufacture_id, :integer
  end
end
