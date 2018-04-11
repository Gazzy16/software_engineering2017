class Project < ApplicationRecord
	validates :name, uniqueness: true
	has_many :connections
	has_many :developers, through: :connections
end
