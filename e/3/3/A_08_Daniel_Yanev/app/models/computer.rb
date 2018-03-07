class Computer < ApplicationRecord
  belongs_to :room
  validates :processor, uniqueness: true
end
