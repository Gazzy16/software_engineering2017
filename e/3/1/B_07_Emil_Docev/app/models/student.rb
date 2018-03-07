class Student < ActiveRecord::Base
  validates :school_id, presence: true, numericality: { only_integer: true }

  validate :validate_school_id


private

  def validate_school_id
    errors.add(:school_id, "Tis is school does not exists") unless School.exists?(self.school_id)
  end
end
