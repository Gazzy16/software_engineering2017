class Company < ApplicationRecord
    validates :number, presence: true
    has_many :employees
end
