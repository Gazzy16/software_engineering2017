class Product < ApplicationRecord
has_many :product_clients
has_many :clients, through: :product_clints
validates :name, uniqueness: true
end
