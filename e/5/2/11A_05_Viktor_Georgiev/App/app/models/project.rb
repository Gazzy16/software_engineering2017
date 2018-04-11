class Project < ApplicationRecord
	has_many :developerprojects
	has_many :developers, through: :developerprojects
	validates_uniqueness_of :name, :message => "ID needs to be unique"
end
