class Company < ApplicationRecord
  validates :number, uniqueness: true
  has_many :employees
end
