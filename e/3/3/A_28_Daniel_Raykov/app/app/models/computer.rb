class Computer < ApplicationRecord
  validates :processor, uniqueness: true
  validates :roomid, presence: true
  belongs_to :room
end
