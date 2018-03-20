class Bottle < ApplicationRecord
	belongs_to :Table, :class_name => "Bottle" 
end
