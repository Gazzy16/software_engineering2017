class Plane < ActiveRecord::Base
belongs_to:byer
validate do
	b = Byer.find(self.bid)
	if b.money  < self.price
		if (b.country == self.manc && (self.price - 20000) > b.money) || (b.country != self.manc) 
			errors.add(:bid, "Not enought money")
		end
	end	
end

validate do
	b = Byer.find(self.bid)
	if b.country != self.manc 
		p = Plane.where(model:self.model)
		inn = 0
		for i in p
			if Byer.find(i.bid).country == b.country 
				inn += 1	
			end	
		end
		if inn >= 3
			errors.add(:bid, "you cant bay")
		end
	end 
end

validate do
	b = Byer.find(bid).name.length
	s = self.model.length
	if s != b
		errors.add(:bid, "neeeee" )
	end 
end

end 
