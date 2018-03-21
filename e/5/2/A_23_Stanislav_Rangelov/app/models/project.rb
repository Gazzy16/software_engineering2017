class Project < ApplicationRecord
	has_many :connection_between_developer_and_projects
	has_many :developers, through: :connection_between_developer_and_projects
end
