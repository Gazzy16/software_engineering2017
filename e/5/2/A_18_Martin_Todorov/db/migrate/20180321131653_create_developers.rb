class CreateDevelopers < ActiveRecord::Migration[5.1]
  def change
    create_table :developers do |t|
      t.string :name
      t.references :project, foreign_key: true

      t.timestamps
    end
  end
end
