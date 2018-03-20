class CreateCinemasFilmsJoinTable < ActiveRecord::Migration[5.1]
  def change
  	create_join_table :cinemas, :films do |t|
	    t.index :cinema_id
	    t.index :film_id
	  end
  end
end
