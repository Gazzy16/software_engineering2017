class Product < ApplicationRecord
	has_many :client_product_connections
	has_many :clients, through: :client_product_connections
	validates :name, uniqueness: true
end
