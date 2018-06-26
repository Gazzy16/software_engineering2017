class School < ApplicationRecord
    has_many :school_teacher_joins
    has_many :teachers, through: :school_teacher_joins
end
