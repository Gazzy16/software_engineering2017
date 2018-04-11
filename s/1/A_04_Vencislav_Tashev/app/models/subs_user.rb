class SubsUser < ApplicationRecord
  belongs_to :user
  belongs_to :subscription

  validates :user,         presence: true
  validates :subscription, presence: true

  validate :price_less_than_10?,
           :no_more_than_10_students?,
           :no_less_than_2_teachers?,
           on: :create

  def price_less_than_10?
    !subscription.nil? && subscription.price < 10
  end

  def no_more_than_10_students?
    if !subscription.nil? && subscription.students.count >= 10
      errors[:subscription] << 'students cannot be more than 10'
    end
  end

  def no_less_than_2_teachers?
    if !subscription.nil? && subscription.teachers.count <= 2
      errors[:subscription] << 'teachers cannot be less than 2'
    end
  end
end
