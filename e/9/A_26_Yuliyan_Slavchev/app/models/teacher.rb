class Teacher < ApplicationRecord
    has_many :school_teacher_joins
    has_many :schools, through: :school_teacher_joins

    validates_uniqueness_of :first_name, scope: :second_name
end
