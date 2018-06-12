class Employee < ApplicationRecord
  #validates :email, inclusion:
  validates :email, uniqueness: true

  has_one :company
  belongs_to :company
end
