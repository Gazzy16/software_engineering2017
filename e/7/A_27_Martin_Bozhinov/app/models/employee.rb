class Employee < ApplicationRecord
	has_one :company
	validates :email, presence: true
end
