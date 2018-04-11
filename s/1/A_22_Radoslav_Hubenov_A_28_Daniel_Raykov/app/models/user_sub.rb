class User_SubValidator < ActiveModel::Validator
  def validate(record)
    if record.sub.price.to_i < 10
      if record.role == "Student" && record.user_sub.count('Student') == 10
        record.errors[:base] << "Student Limit Exceeded"
      end

      if record.role == "Teacher" && record.user_sub.count('Teacher') == 2
        record.errors[:base] << "Teacher Limit Exceeded"
      end
    end
  end
end

class UserSub < ApplicationRecord
  belongs_to :user
  belongs_to :sub
  validates_with User_SubValidator
end
