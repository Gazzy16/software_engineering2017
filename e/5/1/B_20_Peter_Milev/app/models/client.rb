class Client < ApplicationRecord
	has_many :client_product_connections
	has_many :products, through: :client_product_connections
end
