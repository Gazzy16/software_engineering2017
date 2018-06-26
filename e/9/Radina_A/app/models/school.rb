class School < ApplicationRecord
has_many :connects
has_many :teachers, through: :connects
end
