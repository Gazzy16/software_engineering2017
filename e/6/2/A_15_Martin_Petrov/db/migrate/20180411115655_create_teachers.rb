class CreateTeachers < ActiveRecord::Migration[5.2]
  def change
    create_table :teachers do |t|
      t.string :f_name, unique: true
      t.string :m_name
      t.string :title
      t.string :subject
		
      t.timestamps
    end
  end
end
