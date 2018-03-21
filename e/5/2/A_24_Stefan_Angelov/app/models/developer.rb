class Developer < ApplicationRecord
	has_many :connections	
	has_many :projects, through: :connections
	
end
