class Tasksolution < ActiveRecord::Base
belongs_to:task
validates:confirmed, inclusion: { in: 0..1,message: "not more "}
validate do
	if Tasksolution.where(sid:self.sid).length == 2
		errors.add(:sid, "No more solution")
	end
end


end
