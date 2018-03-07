class CreateSchools < ActiveRecord::Migration[5.1]
  def change
    create_table :schools do |t|
      t.integer :school_id
      t.string :school_name

      t.timestamps
    end
  end
end
