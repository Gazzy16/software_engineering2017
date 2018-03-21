class CreateDevs < ActiveRecord::Migration[5.1]
  def change
    create_table :devs do |t|
      t.text :name
      t.integer :project_id

      t.timestamps
    end
  end
end
