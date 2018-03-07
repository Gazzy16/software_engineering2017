class School < ApplicationRecord
    self.primary_key = "id"
    has_many :students
end
