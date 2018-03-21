class CreateCinemasFilms < ActiveRecord::Migration[5.1]
  def change
    create_table :cinemas_films do |t|
      t.integer :film_id
      t.integer :cinema_id
      t.timestamps
    end
  end
end
