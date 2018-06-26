class CreateDevs < ActiveRecord::Migration[5.1]
  def change
    create_table :devs do |t|
      t.string :dev_name

      t.timestamps
    end
  end
end
