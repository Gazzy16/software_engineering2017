class Specialty < ApplicationRecord
	belongs_to :school
	validate :nunber_of_students :inclusion => 18..30
 	NUMBER_OF_PERMITTED_SPECIALTIES = 3
  	
	has_many :specialties, before_add: :validate_specialty_limit
	
  private

 	 def validate_specialty_limit(specialty)
    	raise Exception.new if specialty.number >= NUMBER_OF_PERMITTED_SPECIALTIES
  end
end



