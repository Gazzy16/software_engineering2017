class Teacher < ApplicationRecord
 validates :first_name, uniqueness: true
belongs_to :scholl
end
