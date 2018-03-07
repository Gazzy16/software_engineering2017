class Subject < ApplicationRecord
	belongs_to :teacher
	validates_presence_of :title
end
