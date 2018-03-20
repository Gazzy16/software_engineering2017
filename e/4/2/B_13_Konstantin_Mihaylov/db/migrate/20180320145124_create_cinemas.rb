class CreateCinemas < ActiveRecord::Migration[5.1]
  def change
    create_table :cinemas do |t|
      t.locationCinema :string

      t.timestamps
    end
  end
end
