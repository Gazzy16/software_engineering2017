class Student < ApplicationRecord
	  validates :school_id, inclusion: { in: Mschool.all.map{|s| s.number},
    	message: "%{value} is not a valid size" } 
	 validates :secondName, uniqueness: true
end
