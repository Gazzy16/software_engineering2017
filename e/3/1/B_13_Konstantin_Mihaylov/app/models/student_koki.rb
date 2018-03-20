class StudentKoki < ApplicationRecord
	validates :school_id, presence: true
	belongs_to :school
	validates_uniqueness_of :secondname
end
