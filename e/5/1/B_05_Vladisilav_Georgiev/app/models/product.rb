class Product < ApplicationRecord
	has_many :product_client_connections
	has_many :clients, through: :product_client_connections
	validates :name,uniqueness: true
end
