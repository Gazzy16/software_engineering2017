class CreateSpecialtySchools < ActiveRecord::Migration[5.1]
  def change
    create_table :specialty_schools do |t|
      t.integer :school_id
      t.integer :specialty_id

      t.timestamps
    end
  end
end
