class Developer < ApplicationRecord
has_many :projects, through: :connections
has_many :connections

end
