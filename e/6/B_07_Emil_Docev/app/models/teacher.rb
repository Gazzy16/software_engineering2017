class Teacher < ApplicationRecord
has_many :school_classes
validates :first_name, uniqueness: true 

end
