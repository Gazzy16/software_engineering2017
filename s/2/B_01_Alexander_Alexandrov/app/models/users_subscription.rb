class UsersSubscription < ApplicationRecord
    belongs_to :user
    belongs_to :subscription
    validate :roles_limit
        
    
        def roles_limit
        end
end
