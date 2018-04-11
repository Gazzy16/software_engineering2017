class CreateSchools < ActiveRecord::Migration[5.1]
  def change
    create_table :schools do |t|
      t.date :school
      t.references :teacher, foreign_key: true

      t.timestamps
    end
  end
end
