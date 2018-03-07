class Room < ApplicationRecord
  self.primary_key = "id"
  has_many :computers
end
