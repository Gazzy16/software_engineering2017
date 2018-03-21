class Project < ApplicationRecord
has_many :developers, through: :connections
has_many :connections
end
