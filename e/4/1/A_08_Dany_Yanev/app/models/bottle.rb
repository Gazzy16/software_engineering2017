class Bottle < ApplicationRecord
  belongs_to :table
  validates :brand, uniqueness: true
end
