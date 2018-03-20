class Table < ApplicationRecord
	has_many :Bottle, :class_name => "Table"
end
