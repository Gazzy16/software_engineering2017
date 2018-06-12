class CreateTeamMembers < ActiveRecord::Migration[5.1]
  def change
    create_table :team_members do |t|
      t.string :member_name
      t.string :color

      t.timestamps
    end
  end
end
