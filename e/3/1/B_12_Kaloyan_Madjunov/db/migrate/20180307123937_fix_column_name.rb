class FixColumnName < ActiveRecord::Migration[5.1]
  def change
    rename_column :students, :school_id, :my_school_id
  end
end
