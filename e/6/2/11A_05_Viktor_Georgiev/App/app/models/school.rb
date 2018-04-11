class School < ApplicationRecord
	has_many :teachers
	belongs_to :teacher
	validates :name, presence: true
end
