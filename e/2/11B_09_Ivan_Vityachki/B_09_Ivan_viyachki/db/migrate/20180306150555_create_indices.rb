class CreateIndices < ActiveRecord::Migration[5.1]
  def change
    create_table :indices do |t|
      t.string :ClassName
      t.integer :value

      t.timestamps
    end
  end
end
