class Developer < ApplicationRecord
    has_many :developer_project_connections
    has_many :projects, through: :developer_project_connections
end
