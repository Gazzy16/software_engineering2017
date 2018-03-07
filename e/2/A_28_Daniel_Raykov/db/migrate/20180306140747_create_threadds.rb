class CreateThreadds < ActiveRecord::Migration[5.1]
  def change
    create_table :threadds do |t|
      t.string :classname
      t.integer :value

      t.timestamps
    end
  end
end
