class CreateSchools < ActiveRecord::Migration[5.1]
  def change
    create_table :schools do |t|
      t.string :name
      t.integer :number
      t.integer :id_school

      t.timestamps
    end
  end
end
