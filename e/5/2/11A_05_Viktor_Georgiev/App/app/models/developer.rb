class Developer < ApplicationRecord
	has_many :developerprojects
	has_many :projects, through: :developerprojects
end
