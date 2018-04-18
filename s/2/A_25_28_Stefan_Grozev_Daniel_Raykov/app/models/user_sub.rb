class UserSubValidator < ActiveModel::Validator
  def validate(record)
    if record.sub.price.to_i < 10
      if record.role == "student" && UserSub.where(sub_id: record.sub.id, role: 'student').count >= 10
        record.errors[:base] << "Students limit exceeded!"      
      end
      if record.role == "teacher" && UserSub.where(sub_id: record.sub.id, role: 'teacher').count >= 2
        record.errors[:base] << "Teachers limit exceeded!"      
      end
    end
  end
end

class UserSub < ApplicationRecord
  belongs_to :user
  belongs_to :sub
  validates_with UserSubValidator

  validates_uniqueness_of :user_id, scope: :sub_id
end
