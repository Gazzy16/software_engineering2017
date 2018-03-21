class Developer < ApplicationRecord
	has_many :connection_between_developer_and_projects
	has_many :projects, through: :connection_between_developer_and_projects
end
