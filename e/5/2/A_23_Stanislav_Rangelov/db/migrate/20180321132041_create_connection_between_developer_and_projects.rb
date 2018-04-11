class CreateConnectionBetweenDeveloperAndProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :connection_between_developer_and_projects do |t|
      t.integer :developer_id
      t.integer :project_id

      t.timestamps
    end
  end
end
