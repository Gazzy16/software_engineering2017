class CreateCinemasFilms < ActiveRecord::Migration[5.1]
  def change
    create_table :cinemas_films do |t|

      t.timestamps
    end
  end
end
