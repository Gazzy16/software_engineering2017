class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :Name
      t.string :description

      t.timestamps
    end
  end
end
