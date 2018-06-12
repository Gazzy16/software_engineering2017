class CreateTemsToMembers < ActiveRecord::Migration[5.1]
  def change
    create_table :tems_to_members do |t|
      t.string :team_color
      t.string :member_name

      t.timestamps
    end
  end
end
