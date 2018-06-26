class AddTeacherToSchools < ActiveRecord::Migration[5.2]
  def change
  	add_column :teachers, :school_id, :integer
  end
end
