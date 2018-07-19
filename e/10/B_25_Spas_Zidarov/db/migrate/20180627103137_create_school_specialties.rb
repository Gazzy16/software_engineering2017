class CreateSchoolSpecialties < ActiveRecord::Migration[5.1]
  def change
    create_table :school_specialties do |t|
      t.integer :specialty_id
      t.integer :school_id

      t.timestamps
    end
  end
end
