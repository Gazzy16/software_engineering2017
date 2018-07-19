class TaskSolution < ApplicationRecord
belongs_to :task

validate :check

private
def check
	sum = 0
	TaskSolution.where(task_id: self.task_id).each do |tt|
	if tt.picture == nil
		sum = sum + 1
	end
	end
	if self.picture == nil && sum + 1 > 3
		errors.add(:base, "Problem 1") 
	end
end

validate do
t = Task.find(self.task_id)
if self.confirmed == 1 && t.solreq == 1 && self.picture == nil
errors.add(:base, "Problem 2")
end
end


end
