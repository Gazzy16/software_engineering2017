class Project < ApplicationRecord
    has_many :developer_project_connections
    has_many :developers, through: :developer_project_connections
end
