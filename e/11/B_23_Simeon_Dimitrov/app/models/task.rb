class Task < ApplicationRecord


validate do
    count = 0
    Tasks.each do |ts|
      if ts.solreq == 1 
	count = count + 1
      end
    end
end


end
