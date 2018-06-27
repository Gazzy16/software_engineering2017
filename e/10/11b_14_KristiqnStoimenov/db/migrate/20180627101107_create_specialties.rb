class CreateSpecialties < ActiveRecord::Migration[5.1]
  def change
    create_table :specialties do |t|
      t.string :name
      t.integer :number_of_students

      t.timestamps
    end
  end
end
