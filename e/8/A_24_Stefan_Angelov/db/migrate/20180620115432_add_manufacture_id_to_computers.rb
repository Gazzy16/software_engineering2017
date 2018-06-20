class AddManufactureIdToComputers < ActiveRecord::Migration[5.2]
  def change
    add_column :computers, :manufacture_id, :integer
  end
end
