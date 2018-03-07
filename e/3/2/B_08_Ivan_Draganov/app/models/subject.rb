class Subject < ApplicationRecord
belongs_to:teacher
	validates:teacher_id,inclusion: { in: Teacher.all.map{|t| t.id},
	message: "Not a valid teacher!"}	
end
