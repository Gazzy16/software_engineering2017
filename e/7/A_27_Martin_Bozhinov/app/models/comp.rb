class Comp < ApplicationRecord
	validates :name, presence: true
	has_many :employees
end
