class CreateByers < ActiveRecord::Migration
  def change
    create_table :byers do |t|
      t.integer :money
      t.string :name
      t.string :country

      t.timestamps null: false
    end
  end
end
