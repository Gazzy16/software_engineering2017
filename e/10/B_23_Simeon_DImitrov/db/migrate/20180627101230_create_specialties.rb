class CreateSpecialties < ActiveRecord::Migration[5.1]
  def change
    create_table :specialties do |t|
      t.string :name
      t.integer :studnum
      t.integer :school_id

      t.timestamps
    end
  end
end
