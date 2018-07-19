class TaskSolution < ApplicationRecord
	belongs_to :task


	validates :name, inclusion: {in: %w(not_started started completed), message: "problem"}

	validate do
		if Task.find(self.task_id).solution == nil
			count = TaskSolution.where(self.task_id).count
			if count >= 3
				errors.add(:base, "Problem!")
			end
		end
	end

end
