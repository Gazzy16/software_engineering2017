class Employee < ApplicationRecord
    has_one :company
    validate :valid_company_email


    def valid_company_email
        unless self.email.include? self.company.number
            errors.add(:email, :invalid)
        end
    end
end
