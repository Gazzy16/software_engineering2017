class CreateMembersTeams < ActiveRecord::Migration[5.1]
  def change
    create_table :members_teams do |t|
      t.integer :member_id
      t.integer :team_id

      t.timestamps
    end
  end
end
