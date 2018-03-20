class CreateCinemas < ActiveRecord::Migration[5.1]
  def change
    create_table :cinemas do |t|
      t.string :location
      t.integer :id_sinema

      t.timestamps
    end
  end
end
