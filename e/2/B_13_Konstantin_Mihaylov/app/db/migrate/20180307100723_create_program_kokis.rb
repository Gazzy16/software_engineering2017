class CreateProgramKokis < ActiveRecord::Migration[5.1]
  def change
    create_table :program_kokis do |t|
      t.string :name
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
