class CreateMySchools < ActiveRecord::Migration[5.1]
  def change
    create_table :my_schools do |t|
      t.string :school_name
      t.integer :school_number

      t.timestamps
    end
  end
end
