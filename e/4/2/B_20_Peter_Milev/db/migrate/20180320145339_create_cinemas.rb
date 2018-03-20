class CreateCinemas < ActiveRecord::Migration[5.1]
  def change
    create_table :cinemas, id: false do |t|
      t.primary_key :id
      t.string :location

      t.timestamps
    end
  end
end
