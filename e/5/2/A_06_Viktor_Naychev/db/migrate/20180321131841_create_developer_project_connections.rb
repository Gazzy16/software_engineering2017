class CreateDeveloperProjectConnections < ActiveRecord::Migration[5.1]
  def change
    create_table :developer_project_connections do |t|
      t.integer :developer_id
      t.integer :project_id

      t.timestamps
    end
  end
end
