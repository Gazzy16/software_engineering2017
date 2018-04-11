class Connection < ApplicationRecord
has_many :developers
has_many :projects

end
