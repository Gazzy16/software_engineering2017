class CreateCinemasFilmsJoinTable < ActiveRecord::Migration[5.1]
  def change
	create_join_table :cinemas, :films
  end
end
