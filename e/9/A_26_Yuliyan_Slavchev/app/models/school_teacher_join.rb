class SchoolTeacherJoin < ApplicationRecord
  belongs_to :school
  belongs_to :teacher
end
