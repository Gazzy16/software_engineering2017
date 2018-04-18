class UserSub < ApplicationRecord
    belongs_to :user
    belongs_to :sub

    validates_uniqueness_of :user_id, scope: :sub_id
end
