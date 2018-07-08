class CreateSpecialities < ActiveRecord::Migration[5.1]
  def change
    create_table :specialities do |t|
      t.string :name
      t.integer :students
      t.integer :school_id

      t.timestamps
    end
  end
end
