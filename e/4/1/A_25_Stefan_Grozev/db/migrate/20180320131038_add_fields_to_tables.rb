class AddFieldsToTables < ActiveRecord::Migration
  def change
    add_column :table, :width, :integer
    add_column :table, :height, :integer
    add_column :bottle, :color, :string
    add_column :bottle, :brand, :string
    add_column :bottle, :table_id, :integer
  end
