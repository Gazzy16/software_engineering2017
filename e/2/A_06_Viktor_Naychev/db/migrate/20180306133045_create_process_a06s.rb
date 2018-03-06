class CreateProcessA06s < ActiveRecord::Migration[5.1]
  def change
    create_table :process_a06s do |t|
      t.string :name

      t.timestamps
    end
  end
end
