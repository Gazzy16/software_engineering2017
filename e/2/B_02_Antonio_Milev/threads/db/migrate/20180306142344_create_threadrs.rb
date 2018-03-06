class CreateThreadrs < ActiveRecord::Migration[5.1]
  def change
    create_table :threadrs, :id => false do |t|
      t.integer :id
      t.integer :value

      t.timestamps
    end
  end
end
