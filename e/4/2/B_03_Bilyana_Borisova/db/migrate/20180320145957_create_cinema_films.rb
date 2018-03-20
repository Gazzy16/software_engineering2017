class CreateCinemaFilms < ActiveRecord::Migration[5.1]
  def change
    create_table :cinema_films do |t|
      t.string :location
      t.string :name

      t.timestamps
    end
  end
end
