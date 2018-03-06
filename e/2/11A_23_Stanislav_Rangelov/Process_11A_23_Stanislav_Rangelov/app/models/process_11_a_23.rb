class Process11A23 < ApplicationRecord
  attr_accessible :id
 
  validates :id,  :presence => true

  has_many :thread_11_a_23s
end
