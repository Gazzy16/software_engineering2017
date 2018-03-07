class CreateSchools < ActiveRecord::Migration[5.1]
  def change
    create_table :schools do |t|
      t.string :School_name
      t.integer :School_number

      t.timestamps
    end
  end
end
