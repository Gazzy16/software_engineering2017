class CreateComps < ActiveRecord::Migration[5.2]
  def change
    create_table :comps do |t|
      t.string :name
      t.string :address
      t.integer :number

      t.timestamps
    end
    add_index :comps, :number, unique: true
  end
end
