class CreateProcessA12s < ActiveRecord::Migration[5.1]
  def change
    create_table :process_a_12s, :id => false do |t|
      t.string :name
      t.string :id
      t.timestamps
    end
  end
end
