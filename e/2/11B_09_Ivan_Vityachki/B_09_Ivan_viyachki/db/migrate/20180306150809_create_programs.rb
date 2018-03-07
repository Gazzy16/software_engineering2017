class CreatePrograms < ActiveRecord::Migration[5.1]
  def change
    create_table :programs do |t|
      t.string :Name
      t.integer :Id_of_process

      t.timestamps
    end
  end
end
