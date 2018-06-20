class Connection < ApplicationRecord
	belongs_to :project
	belongs_to :dev
end