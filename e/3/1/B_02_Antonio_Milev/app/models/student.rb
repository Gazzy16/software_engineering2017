class Student < ApplicationRecord
	validates :second_name, uniqueness: true
	validates :shool_id, inclusion: {in: School.all.map{|s| s.id}, message: 'No such school'}
end
