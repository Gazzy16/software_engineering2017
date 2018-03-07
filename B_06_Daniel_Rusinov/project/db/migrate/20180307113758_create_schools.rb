class CreateSchools < ActiveRecord::Migration[5.1]
  def change
    create_table :schools, id: false do |t|
      t.integer :id
      t.string :school_name
      t.integer :school_number

      t.timestamps
    end
  end
end
