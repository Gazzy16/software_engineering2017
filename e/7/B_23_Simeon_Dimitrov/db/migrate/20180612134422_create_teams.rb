class CreateTeams < ActiveRecord::Migration[5.1]
  def change
    create_table :teams do |t|
      t.string :color
      t.string :team_name
      t.integer :num

      t.timestamps
    end
  end
end
