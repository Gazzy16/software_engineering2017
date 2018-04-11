class Project < ApplicationRecord
	validates_uniqueness_of :name
end
