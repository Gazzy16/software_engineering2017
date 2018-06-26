class CreateTeacherSchools < ActiveRecord::Migration[5.2]
  def change
    create_table :teacher_schools do |t|
    	t.references :teachers 
    	t.references :schools
    end
  end
end
