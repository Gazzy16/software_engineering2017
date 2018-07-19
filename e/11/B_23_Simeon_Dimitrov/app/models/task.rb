class Task < ApplicationRecord

validate do
    count = 0
    Tasks.each do |ts|
      if ts.solreq == 1 
	count = count + 1
      end
    end
    if self.solreq == 1 && count + 1 > 3
	errors.add(:base, "Problem !")
    end
end


end
