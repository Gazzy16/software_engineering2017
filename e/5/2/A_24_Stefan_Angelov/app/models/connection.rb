class Connection < ApplicationRecord
	belongs_to :developer
	belongs_to :project
end
