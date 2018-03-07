class CreateProcess11A23s < ActiveRecord::Migration[5.1]
  def change
    create_table :process_11_a_23s do |t|
      t.string :name
      #t.integer :id

      t.timestamps
    end
  end
end
