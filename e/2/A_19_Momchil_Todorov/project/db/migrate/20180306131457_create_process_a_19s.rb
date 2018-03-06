class CreateProcessA19s < ActiveRecord::Migration[5.1]
  def change
    create_table :process_a_19s do |t|
      t.text :name
      t.integer :id_A

      t.timestamps
    end
  end
end
