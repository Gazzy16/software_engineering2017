class Project < ApplicationRecord

has_many :connections
has_many :developers, through: :connections
end
