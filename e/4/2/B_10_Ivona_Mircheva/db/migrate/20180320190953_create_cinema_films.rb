class CreateCinemaFilms < ActiveRecord::Migration[5.1]
  def change
    create_table :cinema_films do |t|
      t.integer :cinema_id
      t.integer :film_id

      t.timestamps
    end
  end
end
