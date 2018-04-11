class SubsUser < ApplicationRecord
	belongs_to :user
	belongs_to :subscriptiom
end
