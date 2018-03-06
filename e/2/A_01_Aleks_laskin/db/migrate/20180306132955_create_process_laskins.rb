class CreateProcessLaskins < ActiveRecord::Migration[5.1]
  def change
    create_table :process_laskins do |t|
      t.string :name
      t.integer :process_id

      t.timestamps
    end
  end
end
