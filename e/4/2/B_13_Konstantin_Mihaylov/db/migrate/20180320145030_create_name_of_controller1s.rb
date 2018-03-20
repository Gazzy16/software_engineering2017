class CreateNameOfController1s < ActiveRecord::Migration[5.1]
  def change
    create_table :name_of_controller1s do |t|
      t.string :name
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
