class Car < ApplicationRecord
validate :problem

private
def problem
	errors.add(:base, "Problem, wrong color") if self.color != "red"
	errors.add(:base, "Problem, wrong color") if self.color != "blue"
	errors.add(:base, "Problem, wrong color") if self.color != "green"
end
end
