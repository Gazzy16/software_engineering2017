class CreateFilms < ActiveRecord::Migration[5.1]
  def change
    create_table :films, id: false do |t|
      t.primary_key :id
      t.string :name

      t.timestamps
    end
  end
end
