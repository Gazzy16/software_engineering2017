class Threadr < ApplicationRecord
  has_many :programs
 self.primary_key = "id"
end
