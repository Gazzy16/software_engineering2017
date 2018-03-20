class CreateFilms < ActiveRecord::Migration[5.1]
  def change
    create_table :films do |t|
      t.name :string

      t.timestamps
    end
  end
end
