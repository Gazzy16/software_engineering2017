class CreateTeams < ActiveRecord::Migration[5.2]
  def change
    create_table :teams do |t|
      t.string :color
      t.string :name
      t.integer :num

      t.timestamps
    end
	 add_index :teams, :num, unique: true
  end
end
