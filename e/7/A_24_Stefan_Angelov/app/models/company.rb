class Company < ApplicationRecord
  validates :number, uniqueness: true
  has_many :employees
  belongs_to :employees
end
