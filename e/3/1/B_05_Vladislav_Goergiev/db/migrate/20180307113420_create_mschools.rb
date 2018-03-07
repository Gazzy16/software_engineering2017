class CreateMschools < ActiveRecord::Migration[5.1]
  def change
    create_table :mschools do |t|
      t.string :name
      t.integer :number

      t.timestamps
    end
  end
end
